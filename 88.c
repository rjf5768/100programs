#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int x, sum = 0;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_assume(x >= 1 && x <= 50);
    int i = 1;
    while(i <= x) {
        if(i % 2 == 0)
            sum += i;
        else
            sum -= i;
        i++;
    }
    if(sum < -1000 || sum > 1000)
        klee_assert(0);
    return 0;
}
