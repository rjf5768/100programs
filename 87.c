#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int a;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_assume(a >= -100 && a <= 100);
    int result;
    if(a < 0) {
        if(a < -50)
            result = a * 2;
        else
            result = a + 10;
    } else if(a == 0) {
        result = 0;
    } else {
        if(a > 50)
            result = a - 10;
        else
            result = a * 2;
    }
    if(result % 2 != 0)
        klee_assert(0);
    return 0;
}
