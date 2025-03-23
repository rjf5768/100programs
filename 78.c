#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int counter = 0, x;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_assume(x >= 1 && x <= 20);
    for (int i = 0; i < 50; i++) {
        counter++;
        if(counter >= x)
            break;
    }
    if(counter < x)
        klee_assert(0);
    return 0;
}
