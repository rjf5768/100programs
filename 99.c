#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int flag, iterations;
    klee_make_symbolic(&flag, sizeof(flag), "flag");
    klee_make_symbolic(&iterations, sizeof(iterations), "iterations");
    klee_assume(flag == 0 || flag == 1);
    klee_assume(iterations >= 1 && iterations <= 20);
    for (int i = 0; i < iterations; i++) {
        flag = flag ^ 1;
    }
    return 0;
}
