#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int a, b;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_assume(a >= -100 && a <= 100);
    klee_assume(b >= -100 && b <= 100);
    int c = a + b;
    if(c - a != b)
        klee_assert(0);
    return 0;
}
