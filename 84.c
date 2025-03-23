#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int abs_val(int x) {
    return (x < 0) ? -x : x;
}

int sign(int x) {
    if(x > 0) return 1;
    if(x < 0) return -1;
    return 0;
}

int main(void) {
    int x;
    klee_make_symbolic(&x, sizeof(x), "x");
    int a = abs_val(x);
    int s = sign(x);
    if(x < 0 && a != -x)
        klee_assert(0);
    if(x >= 0 && a != x)
        klee_assert(0);
    if(x > 0 && s != 1)
        klee_assert(0);
    if(x < 0 && s != -1)
        klee_assert(0);
    if(x == 0 && s != 0)
        klee_assert(0);
    return 0;
}
