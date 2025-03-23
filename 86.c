#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int x, y, z;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");
    klee_assume(x >= -50 && x <= 50);
    klee_assume(y >= -50 && y <= 50);
    z = (x > y) ? (x - y) : (y - x);
    if(z < 0)
        klee_assert(0);
    return 0;
}
