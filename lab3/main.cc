#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <chrono>
#include <iomanip>
#include <sys/time.h>
#include <omp.h>
#include <pthread.h>
// 可以自行添加需要的头文件
#include <algorithm>
#include <vector>
#include <cstdlib>
#include <stdexcept>

int g_thread_count = 4;
// 0: serial, 1: pthread, 2: OpenMP
int g_method = 2;

void fRead(int *a, int *b, int *n, int *p, int input_id){
    // 数据输入函数
    std::string str1 = "/nttdata/";
    std::string str2 = std::to_string(input_id);
    std::string strin = str1 + str2 + ".in";
    std::ifstream fin;
    fin.open(strin, std::ios::in);
    fin>>*n>>*p;
    for (int i = 0; i < *n; i++){
        fin>>a[i];
    }
    for (int i = 0; i < *n; i++){
        fin>>b[i];
    }
}

void fCheck(int *ab, int n, int input_id){
    // 判断多项式乘法结果是否正确
    std::string str1 = "/nttdata/";
    std::string str2 = std::to_string(input_id);
    std::string strout = str1 + str2 + ".out";
    std::ifstream fin;
    fin.open(strout, std::ios::in);
    for (int i = 0; i < n * 2 - 1; i++){
        int x;
        fin>>x;
        if(x != ab[i]){
            std::cout<<"多项式乘法结果错误"<<std::endl;
            return;
        }
    }
    std::cout<<"多项式乘法结果正确"<<std::endl;
    return;
}

void fWrite(int *ab, int n, int input_id){
    // 数据输出函数, 可以用来输出最终结果, 也可用于调试时输出中间数组
    std::string str1 = "files/";
    std::string str2 = std::to_string(input_id);
    std::string strout = str1 + str2 + ".out";
    std::ofstream fout;
    fout.open(strout, std::ios::out);
    for (int i = 0; i < n * 2 - 1; i++){
        fout<<ab[i]<<'\n';
    }
}

long long qpow(long long a, long long b, int p){
    long long ans = 1;
    while(b){
        if(b & 1){
            ans = ans * a % p;
        }
        a = a * a % p;
        b >>= 1;
    }
    return ans;
}

inline int mul_mod(int x, int y, int p){
    return (int)(1LL * x * y % p);
}

void bit_reverse(std::vector<int>& a){
    int n = (int)a.size();
    for(int i = 1, j = 0; i < n; i++){
        int bit = n >> 1;
        for(; j & bit; bit >>= 1){
            j ^= bit;
        }
        j ^= bit;
        if(i < j){
            std::swap(a[i], a[j]);
        }
    }
}

void ntt_serial(std::vector<int>& a, int p, bool invert){
    int n = (int)a.size();
    bit_reverse(a);

    for(int len = 2; len <= n; len <<= 1){
        int mid = len >> 1;
        int wn = (int)qpow(3, (p - 1) / len, p);
        if(invert){
            wn = (int)qpow(wn, p - 2, p);
        }
        for(int i = 0; i < n; i += len){
            int w = 1;
            for(int j = 0; j < mid; j++){
                int x = a[i + j];
                int y = mul_mod(a[i + j + mid], w, p);
                int u = x + y;
                if(u >= p){
                    u -= p;
                }
                int v = x - y;
                if(v < 0){
                    v += p;
                }
                a[i + j] = u;
                a[i + j + mid] = v;
                w = mul_mod(w, wn, p);
            }
        }
    }

    if(invert){
        int inv_n = (int)qpow(n, p - 2, p);
        for(int i = 0; i < n; i++){
            a[i] = mul_mod(a[i], inv_n, p);
        }
    }
}

class PthreadBarrier {
public:
    explicit PthreadBarrier(int count): threshold(count), counter(count), generation(0) {
        pthread_mutex_init(&mutex, nullptr);
        pthread_cond_init(&cond, nullptr);
    }
    ~PthreadBarrier(){
        pthread_cond_destroy(&cond);
        pthread_mutex_destroy(&mutex);
    }
    void wait(){
        pthread_mutex_lock(&mutex);
        int gen = generation;
        if(--counter == 0){
            generation++;
            counter = threshold;
            pthread_cond_broadcast(&cond);
        }else{
            while(gen == generation){
                pthread_cond_wait(&cond, &mutex);
            }
        }
        pthread_mutex_unlock(&mutex);
    }
private:
    pthread_mutex_t mutex{};
    pthread_cond_t cond{};
    int threshold;
    int counter;
    int generation;
};

struct PthreadContext {
    std::vector<int>* a;
    std::vector<int>* roots;
    int n;
    int p;
    int thread_count;
    bool invert;
    PthreadBarrier* barrier;
};

struct PthreadArg {
    PthreadContext* ctx;
    int tid;
};

void* ntt_pthread_worker(void* raw){
    PthreadArg* arg = (PthreadArg*)raw;
    PthreadContext* ctx = arg->ctx;
    std::vector<int>& a = *ctx->a;
    std::vector<int>& roots = *ctx->roots;
    int n = ctx->n;
    int p = ctx->p;
    int tid = arg->tid;
    int thread_count = ctx->thread_count;

    for(int len = 2; len <= n; len <<= 1){
        int mid = len >> 1;
        if(tid == 0){
            int wn = (int)qpow(3, (p - 1) / len, p);
            if(ctx->invert){
                wn = (int)qpow(wn, p - 2, p);
            }
            roots[0] = 1;
            for(int i = 1; i < mid; i++){
                roots[i] = mul_mod(roots[i - 1], wn, p);
            }
        }
        ctx->barrier->wait();

        int total = n >> 1;
        for(int task = tid; task < total; task += thread_count){
            int block = task / mid;
            int j = task - block * mid;
            int base = block * len;
            int x = a[base + j];
            int y = mul_mod(a[base + j + mid], roots[j], p);
            int u = x + y;
            if(u >= p){
                u -= p;
            }
            int v = x - y;
            if(v < 0){
                v += p;
            }
            a[base + j] = u;
            a[base + j + mid] = v;
        }
        ctx->barrier->wait();
    }

    if(ctx->invert){
        int inv_n = (int)qpow(n, p - 2, p);
        for(int i = tid; i < n; i += thread_count){
            a[i] = mul_mod(a[i], inv_n, p);
        }
    }
    return nullptr;
}

void ntt_pthread(std::vector<int>& a, int p, bool invert, int thread_count){
    if(thread_count <= 1){
        ntt_serial(a, p, invert);
        return;
    }

    int n = (int)a.size();
    bit_reverse(a);
    std::vector<int> roots(n / 2);
    PthreadBarrier barrier(thread_count);
    PthreadContext ctx{&a, &roots, n, p, thread_count, invert, &barrier};
    std::vector<pthread_t> threads(thread_count);
    std::vector<PthreadArg> args(thread_count);

    for(int i = 0; i < thread_count; i++){
        args[i] = PthreadArg{&ctx, i};
        if(pthread_create(&threads[i], nullptr, ntt_pthread_worker, &args[i]) != 0){
            throw std::runtime_error("pthread_create failed");
        }
    }
    for(int i = 0; i < thread_count; i++){
        pthread_join(threads[i], nullptr);
    }
}

void ntt_openmp(std::vector<int>& a, int p, bool invert, int thread_count){
    if(thread_count <= 1){
        ntt_serial(a, p, invert);
        return;
    }

    int n = (int)a.size();
    bit_reverse(a);
    std::vector<int> roots(n / 2);

#pragma omp parallel num_threads(thread_count) shared(a, roots)
    {
        for(int len = 2; len <= n; len <<= 1){
            int mid = len >> 1;
#pragma omp single
            {
                int wn = (int)qpow(3, (p - 1) / len, p);
                if(invert){
                    wn = (int)qpow(wn, p - 2, p);
                }
                roots[0] = 1;
                for(int i = 1; i < mid; i++){
                    roots[i] = mul_mod(roots[i - 1], wn, p);
                }
            }

#pragma omp for schedule(static)
            for(int task = 0; task < n / 2; task++){
                int block = task / mid;
                int j = task - block * mid;
                int base = block * len;
                int x = a[base + j];
                int y = mul_mod(a[base + j + mid], roots[j], p);
                int u = x + y;
                if(u >= p){
                    u -= p;
                }
                int v = x - y;
                if(v < 0){
                    v += p;
                }
                a[base + j] = u;
                a[base + j + mid] = v;
            }
        }

        if(invert){
            int inv_n = (int)qpow(n, p - 2, p);
#pragma omp for schedule(static)
            for(int i = 0; i < n; i++){
                a[i] = mul_mod(a[i], inv_n, p);
            }
        }
    }
}

void ntt_dispatch(std::vector<int>& a, int p, bool invert){
    if(g_method == 0){
        ntt_serial(a, p, invert);
    }else if(g_method == 1){
        ntt_pthread(a, p, invert, g_thread_count);
    }else{
        ntt_openmp(a, p, invert, g_thread_count);
    }
}

void poly_multiply(int *a, int *b, int *ab, int n, int p){
    int need = n * 2 - 1;
    int limit = 1;
    while(limit < need){
        limit <<= 1;
    }

    std::vector<int> fa(limit, 0);
    std::vector<int> fb(limit, 0);
    for(int i = 0; i < n; ++i){
        fa[i] = a[i] % p;
        fb[i] = b[i] % p;
    }

    ntt_dispatch(fa, p, false);
    ntt_dispatch(fb, p, false);

    if(g_method == 2 && g_thread_count > 1){
#pragma omp parallel for num_threads(g_thread_count) schedule(static)
        for(int i = 0; i < limit; ++i){
            fa[i] = mul_mod(fa[i], fb[i], p);
        }
    }else{
        for(int i = 0; i < limit; ++i){
            fa[i] = mul_mod(fa[i], fb[i], p);
        }
    }

    ntt_dispatch(fa, p, true);

    for(int i = 0; i < need; ++i){
        ab[i] = fa[i];
    }
}

int a[300000], b[300000], ab[300000];
int main(int argc, char *argv[])
{
    // 保证输入的所有模数的原根均为 3, 且模数都能表示为 a \times 4 ^ k + 1 的形式
    // 输入模数分别为 7340033 104857601 469762049 263882790666241
    // 第四个模数超过了整型表示范围, 如果实现此模数意义下的多项式乘法需要修改框架
    // 对第四个模数的输入数据不做必要要求, 如果要自行探索大模数 NTT, 请在完成前三个模数的基础代码及优化后实现大模数 NTT
    // 输入文件共五个, 第一个输入文件 n = 4, 其余四个文件分别对应四个模数, n = 131072
    // 在实现快速数论变化前, 后四个测试样例运行时间较久, 推荐调试正确性时只使用输入文件 1
    int test_begin = 0;
    int test_end = 1;
    if(argc >= 3){
        test_begin = std::atoi(argv[1]);
        test_end = std::atoi(argv[2]);
    }
    if(argc >= 4){
        std::string method = argv[3];
        if(method == "serial" || method == "0"){
            g_method = 0;
        }else if(method == "pthread" || method == "1"){
            g_method = 1;
        }else{
            g_method = 2;
        }
    }
    if(argc >= 5){
        g_thread_count = std::max(1, std::atoi(argv[4]));
    }else{
        g_thread_count = std::max(1, omp_get_max_threads());
    }

    for(int i = test_begin; i <= test_end; ++i){
        long double ans = 0;
        int n_, p_;
        fRead(a, b, &n_, &p_, i);
        memset(ab, 0, sizeof(ab));
        auto Start = std::chrono::high_resolution_clock::now();
        poly_multiply(a, b, ab, n_, p_);
        auto End = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double,std::ratio<1,1000>>elapsed = End - Start;
        ans += elapsed.count();
        fCheck(ab, n_, i);
        std::cout<<"average latency for n = "<<n_<<" p = "<<p_<<" : "<<ans<<" (ms) "<<std::endl;
        // 可以使用 fWrite 函数将 ab 的输出结果打印到 files 文件夹下
        // 禁止使用 cout 一次性输出大量文件内容
        fWrite(ab, n_, i);
    }
    return 0;
}
