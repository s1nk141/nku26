# Lab3 pthread/OpenMP NTT

This directory contains the pthread and OpenMP multithreaded NTT experiment for Parallel Programming Lab3.

## Build

```bash
g++ -O2 -std=c++17 -fopenmp src/main.cpp -o lab3_ntt.exe -pthread
```

If OpenMP is unavailable, the pthread version can still be compiled without `-fopenmp`.

## Run

```bash
./lab3_ntt.exe 8
```

The optional argument is the maximum thread count. The program tests powers of two from 1 to that value, checks correctness against the serial implementation, and prints CSV-formatted timing results.
