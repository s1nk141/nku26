#include <immintrin.h>

#include <algorithm>
#include <chrono>
#include <cmath>
#include <iomanip>
#include <iostream>
#include <random>
#include <vector>

using namespace std;
using namespace std::chrono;

constexpr int MOD = 7340033;      // 7 * 2^20 + 1
constexpr int G = 3;
constexpr double MOD_D = 7340033.0;
constexpr double INV_MOD_D = 1.0 / 7340033.0;

int mod_pow(long long a, long long e) {
    long long r = 1;
    while (e > 0) {
        if (e & 1) r = r * a % MOD;
        a = a * a % MOD;
        e >>= 1;
    }
    return static_cast<int>(r);
}

int scalar_mul_mod(int a, int b) {
    return static_cast<int>(1LL * a * b % MOD);
}

void ntt_scalar(vector<int>& a, bool invert) {
    int n = static_cast<int>(a.size());
    for (int i = 1, j = 0; i < n; i++) {
        int bit = n >> 1;
        for (; j & bit; bit >>= 1) j ^= bit;
        j ^= bit;
        if (i < j) swap(a[i], a[j]);
    }

    for (int len = 2; len <= n; len <<= 1) {
        int wlen = mod_pow(G, (MOD - 1) / len);
        if (invert) wlen = mod_pow(wlen, MOD - 2);
        int half = len >> 1;

        for (int i = 0; i < n; i += len) {
            int w = 1;
            for (int j = 0; j < half; j++) {
                int u = a[i + j];
                int v = scalar_mul_mod(a[i + j + half], w);
                int x = u + v;
                if (x >= MOD) x -= MOD;
                int y = u - v;
                if (y < 0) y += MOD;
                a[i + j] = x;
                a[i + j + half] = y;
                w = scalar_mul_mod(w, wlen);
            }
        }
    }

    if (invert) {
        int inv_n = mod_pow(n, MOD - 2);
        for (int& x : a) x = scalar_mul_mod(x, inv_n);
    }
}

// Floating-point approximate modular multiplication:
// r = x * y - floor(x * y / MOD) * MOD.
__m256d mul_mod_pd(__m256d x, __m256d y) {
    __m256d prod = _mm256_mul_pd(x, y);
    __m256d q = _mm256_floor_pd(_mm256_mul_pd(prod, _mm256_set1_pd(INV_MOD_D)));
    __m256d r = _mm256_sub_pd(prod, _mm256_mul_pd(q, _mm256_set1_pd(MOD_D)));
    __m256d ge = _mm256_cmp_pd(r, _mm256_set1_pd(MOD_D), _CMP_GE_OQ);
    r = _mm256_sub_pd(r, _mm256_and_pd(ge, _mm256_set1_pd(MOD_D)));
    __m256d lt = _mm256_cmp_pd(r, _mm256_setzero_pd(), _CMP_LT_OQ);
    r = _mm256_add_pd(r, _mm256_and_pd(lt, _mm256_set1_pd(MOD_D)));
    return r;
}

void ntt_avx2(vector<int>& a, bool invert) {
    int n = static_cast<int>(a.size());
    for (int i = 1, j = 0; i < n; i++) {
        int bit = n >> 1;
        for (; j & bit; bit >>= 1) j ^= bit;
        j ^= bit;
        if (i < j) swap(a[i], a[j]);
    }

    const __m256d modv = _mm256_set1_pd(MOD_D);
    const __m256d zerov = _mm256_setzero_pd();

    for (int len = 2; len <= n; len <<= 1) {
        int wlen = mod_pow(G, (MOD - 1) / len);
        if (invert) wlen = mod_pow(wlen, MOD - 2);
        int half = len >> 1;

        for (int i = 0; i < n; i += len) {
            int w = 1;
            int j = 0;
            for (; j + 4 <= half; j += 4) {
                int ws[4];
                ws[0] = w;
                ws[1] = scalar_mul_mod(ws[0], wlen);
                ws[2] = scalar_mul_mod(ws[1], wlen);
                ws[3] = scalar_mul_mod(ws[2], wlen);
                w = scalar_mul_mod(ws[3], wlen);

                __m256d u = _mm256_set_pd(a[i + j + 3], a[i + j + 2],
                                          a[i + j + 1], a[i + j]);
                __m256d t = _mm256_set_pd(a[i + j + half + 3], a[i + j + half + 2],
                                          a[i + j + half + 1], a[i + j + half]);
                __m256d ww = _mm256_set_pd(ws[3], ws[2], ws[1], ws[0]);
                __m256d v = mul_mod_pd(t, ww);

                __m256d add = _mm256_add_pd(u, v);
                __m256d add_ge = _mm256_cmp_pd(add, modv, _CMP_GE_OQ);
                add = _mm256_sub_pd(add, _mm256_and_pd(add_ge, modv));

                __m256d sub = _mm256_sub_pd(u, v);
                __m256d sub_lt = _mm256_cmp_pd(sub, zerov, _CMP_LT_OQ);
                sub = _mm256_add_pd(sub, _mm256_and_pd(sub_lt, modv));

                alignas(32) double add_buf[4];
                alignas(32) double sub_buf[4];
                _mm256_store_pd(add_buf, add);
                _mm256_store_pd(sub_buf, sub);
                for (int lane = 0; lane < 4; lane++) {
                    a[i + j + lane] = static_cast<int>(add_buf[lane] + 0.5);
                    a[i + j + half + lane] = static_cast<int>(sub_buf[lane] + 0.5);
                }
            }
            for (; j < half; j++) {
                int u = a[i + j];
                int v = scalar_mul_mod(a[i + j + half], w);
                int x = u + v;
                if (x >= MOD) x -= MOD;
                int y = u - v;
                if (y < 0) y += MOD;
                a[i + j] = x;
                a[i + j + half] = y;
                w = scalar_mul_mod(w, wlen);
            }
        }
    }

    if (invert) {
        int inv_n = mod_pow(n, MOD - 2);
        __m256d invv = _mm256_set1_pd(inv_n);
        int i = 0;
        for (; i + 4 <= n; i += 4) {
            __m256d x = _mm256_set_pd(a[i + 3], a[i + 2], a[i + 1], a[i]);
            __m256d r = mul_mod_pd(x, invv);
            alignas(32) double buf[4];
            _mm256_store_pd(buf, r);
            for (int lane = 0; lane < 4; lane++) a[i + lane] = static_cast<int>(buf[lane] + 0.5);
        }
        for (; i < n; i++) a[i] = scalar_mul_mod(a[i], inv_n);
    }
}

vector<int> convolution_scalar(vector<int> a, vector<int> b) {
    int need = static_cast<int>(a.size() + b.size() - 1);
    int n = 1;
    while (n < need) n <<= 1;
    a.resize(n);
    b.resize(n);
    ntt_scalar(a, false);
    ntt_scalar(b, false);
    for (int i = 0; i < n; i++) a[i] = scalar_mul_mod(a[i], b[i]);
    ntt_scalar(a, true);
    a.resize(need);
    return a;
}

vector<int> convolution_avx2(vector<int> a, vector<int> b) {
    int need = static_cast<int>(a.size() + b.size() - 1);
    int n = 1;
    while (n < need) n <<= 1;
    a.resize(n);
    b.resize(n);
    ntt_avx2(a, false);
    ntt_avx2(b, false);

    int i = 0;
    for (; i + 4 <= n; i += 4) {
        __m256d x = _mm256_set_pd(a[i + 3], a[i + 2], a[i + 1], a[i]);
        __m256d y = _mm256_set_pd(b[i + 3], b[i + 2], b[i + 1], b[i]);
        __m256d r = mul_mod_pd(x, y);
        alignas(32) double buf[4];
        _mm256_store_pd(buf, r);
        for (int lane = 0; lane < 4; lane++) a[i + lane] = static_cast<int>(buf[lane] + 0.5);
    }
    for (; i < n; i++) a[i] = scalar_mul_mod(a[i], b[i]);

    ntt_avx2(a, true);
    a.resize(need);
    return a;
}

template <class F>
double bench(F&& f, int repeat) {
    volatile int sink = 0;
    long long total = 0;
    for (int i = 0; i < repeat; i++) {
        auto start = high_resolution_clock::now();
        vector<int> ans = f();
        auto end = high_resolution_clock::now();
        sink ^= ans[0];
        total += duration_cast<microseconds>(end - start).count();
    }
    return 1.0 * total / repeat;
}

int main() {
    cout << fixed << setprecision(3);
    mt19937 rng(20260505);

    vector<int> sizes = {1024, 4096, 16384, 65536, 262144};
    cout << "MOD=" << MOD << ", primitive_root=" << G << "\n";
    cout << "n, scalar_us, avx2_us, speedup, correct\n";

    for (int n : sizes) {
        vector<int> a(n), b(n);
        for (int i = 0; i < n; i++) {
            a[i] = static_cast<int>(rng() % MOD);
            b[i] = static_cast<int>(rng() % MOD);
        }

        vector<int> ref = convolution_scalar(a, b);
        vector<int> simd = convolution_avx2(a, b);
        bool ok = ref == simd;
        int repeat = n <= 4096 ? 10 : (n <= 65536 ? 5 : 3);

        double scalar_us = bench([&]() { return convolution_scalar(a, b); }, repeat);
        double avx2_us = bench([&]() { return convolution_avx2(a, b); }, repeat);
        cout << n << ", " << scalar_us << ", " << avx2_us << ", "
             << scalar_us / avx2_us << ", " << (ok ? "yes" : "no") << "\n";
    }

    return 0;
}
