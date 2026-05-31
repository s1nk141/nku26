#include <pthread.h>

#ifdef _OPENMP
#include <omp.h>
#endif

#include <algorithm>
#include <chrono>
#include <cstdlib>
#include <iomanip>
#include <iostream>
#include <random>
#include <stdexcept>
#include <string>
#include <vector>

using namespace std;
using namespace std::chrono;

constexpr int MOD = 7340033;  // 7 * 2^20 + 1
constexpr int G = 3;

int mod_pow(long long a, long long e) {
    long long r = 1;
    while (e > 0) {
        if (e & 1) r = r * a % MOD;
        a = a * a % MOD;
        e >>= 1;
    }
    return static_cast<int>(r);
}

inline int mul_mod(int a, int b) {
    return static_cast<int>(1LL * a * b % MOD);
}

void bit_reverse(vector<int>& a) {
    int n = static_cast<int>(a.size());
    for (int i = 1, j = 0; i < n; i++) {
        int bit = n >> 1;
        for (; j & bit; bit >>= 1) j ^= bit;
        j ^= bit;
        if (i < j) swap(a[i], a[j]);
    }
}

void ntt_serial(vector<int>& a, bool invert) {
    int n = static_cast<int>(a.size());
    bit_reverse(a);

    for (int len = 2; len <= n; len <<= 1) {
        int half = len >> 1;
        int wlen = mod_pow(G, (MOD - 1) / len);
        if (invert) wlen = mod_pow(wlen, MOD - 2);

        for (int base = 0; base < n; base += len) {
            int w = 1;
            for (int k = 0; k < half; k++) {
                int u = a[base + k];
                int v = mul_mod(a[base + k + half], w);
                int x = u + v;
                if (x >= MOD) x -= MOD;
                int y = u - v;
                if (y < 0) y += MOD;
                a[base + k] = x;
                a[base + k + half] = y;
                w = mul_mod(w, wlen);
            }
        }
    }

    if (invert) {
        int inv_n = mod_pow(n, MOD - 2);
        for (int& x : a) x = mul_mod(x, inv_n);
    }
}

class PthreadBarrier {
public:
    explicit PthreadBarrier(int count) : threshold_(count), count_(count), generation_(0) {
        pthread_mutex_init(&mutex_, nullptr);
        pthread_cond_init(&cond_, nullptr);
    }

    ~PthreadBarrier() {
        pthread_cond_destroy(&cond_);
        pthread_mutex_destroy(&mutex_);
    }

    void wait() {
        pthread_mutex_lock(&mutex_);
        int generation = generation_;
        if (--count_ == 0) {
            generation_++;
            count_ = threshold_;
            pthread_cond_broadcast(&cond_);
        } else {
            while (generation == generation_) {
                pthread_cond_wait(&cond_, &mutex_);
            }
        }
        pthread_mutex_unlock(&mutex_);
    }

private:
    pthread_mutex_t mutex_{};
    pthread_cond_t cond_{};
    int threshold_;
    int count_;
    int generation_;
};

struct PthreadNttContext {
    vector<int>* a{};
    vector<int>* roots{};
    int n{};
    int thread_count{};
    bool invert{};
    PthreadBarrier* barrier{};
};

struct PthreadWorkerArg {
    PthreadNttContext* ctx{};
    int tid{};
};

void* pthread_ntt_worker(void* raw_arg) {
    auto* arg = static_cast<PthreadWorkerArg*>(raw_arg);
    auto* ctx = arg->ctx;
    vector<int>& a = *ctx->a;
    vector<int>& roots = *ctx->roots;
    const int tid = arg->tid;
    const int n = ctx->n;
    const int thread_count = ctx->thread_count;

    for (int len = 2; len <= n; len <<= 1) {
        int half = len >> 1;
        if (tid == 0) {
            int wlen = mod_pow(G, (MOD - 1) / len);
            if (ctx->invert) wlen = mod_pow(wlen, MOD - 2);
            roots[0] = 1;
            for (int i = 1; i < half; i++) roots[i] = mul_mod(roots[i - 1], wlen);
        }
        ctx->barrier->wait();

        int total_butterflies = n >> 1;
        for (int task = tid; task < total_butterflies; task += thread_count) {
            int block = task / half;
            int k = task - block * half;
            int base = block * len;
            int u = a[base + k];
            int v = mul_mod(a[base + k + half], roots[k]);
            int x = u + v;
            if (x >= MOD) x -= MOD;
            int y = u - v;
            if (y < 0) y += MOD;
            a[base + k] = x;
            a[base + k + half] = y;
        }
        ctx->barrier->wait();
    }

    if (ctx->invert) {
        int inv_n = mod_pow(n, MOD - 2);
        for (int i = tid; i < n; i += thread_count) {
            a[i] = mul_mod(a[i], inv_n);
        }
    }
    return nullptr;
}

void ntt_pthread(vector<int>& a, bool invert, int thread_count) {
    if (thread_count <= 1) {
        ntt_serial(a, invert);
        return;
    }

    int n = static_cast<int>(a.size());
    bit_reverse(a);

    vector<int> roots(n / 2);
    PthreadBarrier barrier(thread_count);
    PthreadNttContext ctx{&a, &roots, n, thread_count, invert, &barrier};
    vector<pthread_t> threads(thread_count);
    vector<PthreadWorkerArg> args(thread_count);

    for (int i = 0; i < thread_count; i++) {
        args[i] = PthreadWorkerArg{&ctx, i};
        if (pthread_create(&threads[i], nullptr, pthread_ntt_worker, &args[i]) != 0) {
            throw runtime_error("pthread_create failed");
        }
    }
    for (int i = 0; i < thread_count; i++) {
        pthread_join(threads[i], nullptr);
    }
}

void ntt_openmp(vector<int>& a, bool invert, int thread_count) {
#ifndef _OPENMP
    (void)thread_count;
    ntt_serial(a, invert);
#else
    if (thread_count <= 1) {
        ntt_serial(a, invert);
        return;
    }

    int n = static_cast<int>(a.size());
    bit_reverse(a);
    vector<int> roots(n / 2);

#pragma omp parallel num_threads(thread_count) shared(a, roots)
    {
        for (int len = 2; len <= n; len <<= 1) {
            int half = len >> 1;
#pragma omp single
            {
                int wlen = mod_pow(G, (MOD - 1) / len);
                if (invert) wlen = mod_pow(wlen, MOD - 2);
                roots[0] = 1;
                for (int i = 1; i < half; i++) roots[i] = mul_mod(roots[i - 1], wlen);
            }

#pragma omp for schedule(static)
            for (int task = 0; task < n / 2; task++) {
                int block = task / half;
                int k = task - block * half;
                int base = block * len;
                int u = a[base + k];
                int v = mul_mod(a[base + k + half], roots[k]);
                int x = u + v;
                if (x >= MOD) x -= MOD;
                int y = u - v;
                if (y < 0) y += MOD;
                a[base + k] = x;
                a[base + k + half] = y;
            }
        }

        if (invert) {
            int inv_n = mod_pow(n, MOD - 2);
#pragma omp for schedule(static)
            for (int i = 0; i < n; i++) {
                a[i] = mul_mod(a[i], inv_n);
            }
        }
    }
#endif
}

template <class Ntt>
vector<int> convolution_with_ntt(vector<int> a, vector<int> b, Ntt&& ntt) {
    int need = static_cast<int>(a.size() + b.size() - 1);
    int n = 1;
    while (n < need) n <<= 1;
    a.resize(n);
    b.resize(n);

    ntt(a, false);
    ntt(b, false);
    for (int i = 0; i < n; i++) a[i] = mul_mod(a[i], b[i]);
    ntt(a, true);
    a.resize(need);
    return a;
}

template <class F>
double benchmark(F&& f, int repeat) {
    volatile int sink = 0;
    long long total_us = 0;
    for (int i = 0; i < repeat; i++) {
        auto begin = high_resolution_clock::now();
        vector<int> result = f();
        auto end = high_resolution_clock::now();
        sink ^= result.empty() ? 0 : result[0];
        total_us += duration_cast<microseconds>(end - begin).count();
    }
    return static_cast<double>(total_us) / repeat;
}

int main(int argc, char** argv) {
    int max_threads = 8;
    if (argc >= 2) max_threads = max(1, atoi(argv[1]));

    vector<int> sizes = {1024, 4096, 16384, 65536, 262144};
    vector<int> thread_counts;
    for (int t = 1; t <= max_threads; t <<= 1) thread_counts.push_back(t);

    mt19937 rng(20260505);
    cout << fixed << setprecision(3);
    cout << "MOD=" << MOD << ", primitive_root=" << G << "\n";
    cout << "n,threads,serial_us,pthread_us,openmp_us,pthread_speedup,openmp_speedup,pthread_ok,openmp_ok\n";

    for (int n : sizes) {
        vector<int> a(n), b(n);
        for (int i = 0; i < n; i++) {
            a[i] = static_cast<int>(rng() % MOD);
            b[i] = static_cast<int>(rng() % MOD);
        }

        vector<int> ref = convolution_with_ntt(a, b, [](vector<int>& x, bool inv) {
            ntt_serial(x, inv);
        });

        int repeat = n <= 4096 ? 10 : (n <= 65536 ? 5 : 3);
        double serial_us = benchmark([&]() {
            return convolution_with_ntt(a, b, [](vector<int>& x, bool inv) {
                ntt_serial(x, inv);
            });
        }, repeat);

        for (int threads : thread_counts) {
            vector<int> pthread_result = convolution_with_ntt(a, b, [&](vector<int>& x, bool inv) {
                ntt_pthread(x, inv, threads);
            });
            vector<int> openmp_result = convolution_with_ntt(a, b, [&](vector<int>& x, bool inv) {
                ntt_openmp(x, inv, threads);
            });

            bool pthread_ok = pthread_result == ref;
            bool openmp_ok = openmp_result == ref;
            double pthread_us = benchmark([&]() {
                return convolution_with_ntt(a, b, [&](vector<int>& x, bool inv) {
                    ntt_pthread(x, inv, threads);
                });
            }, repeat);
            double openmp_us = benchmark([&]() {
                return convolution_with_ntt(a, b, [&](vector<int>& x, bool inv) {
                    ntt_openmp(x, inv, threads);
                });
            }, repeat);

            cout << n << "," << threads << "," << serial_us << "," << pthread_us << ","
                 << openmp_us << "," << serial_us / pthread_us << "," << serial_us / openmp_us
                 << "," << (pthread_ok ? "yes" : "no") << "," << (openmp_ok ? "yes" : "no")
                 << "\n";
        }
    }

    return 0;
}
