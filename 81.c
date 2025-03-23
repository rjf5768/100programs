#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int gcd(int a, int b) {
    if(b == 0) return a;
    return gcd(b, a % b);
}

int main(void) {
    int a, b;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_assume(a > 0 && b > 0 && a <= 100 && b <= 100);
    int g = gcd(a, b);
    if(a % g != 0 || b % g != 0)
        klee_assert(0);
    return 0;
}
