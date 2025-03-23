#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_assume(x >= -50 && x <= 50);
    int y;
    if(x > 0)
        y = x * 2;
    else if(x < 0)
        y = -x;
    else
        y = 0;
    if(x > 0 && y != 2 * x)
        klee_assert(0);
    if(x < 0 && y != -x)
        klee_assert(0);
    return 0;
}
