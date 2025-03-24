#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int n, sum = 0;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 20);
    for (int i = 2, count = 0; count < n; i += 2, count++) {
        sum += i;
    }
    return 0;
}
