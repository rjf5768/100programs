#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int a, b;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_assume(a >= 0 && a <= 100);
    klee_assume(b >= 0 && b <= 100);
    int and_val = a & b;
    int or_val = a | b;
    int xor_val = a ^ b;
    if(and_val > a || and_val > b || or_val < a || or_val < b)
        klee_assert(0);
    if(xor_val != (or_val - and_val))
        klee_assert(0);
    return 0;
}
