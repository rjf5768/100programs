#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int a, b, c, d, result;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");
    klee_assume(a >= -10 && a <= 10);
    klee_assume(b >= -10 && b <= 10);
    klee_assume(c >= -10 && c <= 10);
    klee_assume(d >= -10 && d <= 10);
    result = (a + b) * (c - d) + (a * d) - (b * c);
    if(result < -1000 || result > 1000)
        klee_assert(0);
    return 0;
}
