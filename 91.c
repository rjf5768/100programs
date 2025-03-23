#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int n, count = 0, divisor = 5;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 100);
    while (n / divisor > 0) {
        count += n / divisor;
        divisor *= 5;
    }
    return 0;
}
