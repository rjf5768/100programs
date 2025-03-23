#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int n, mask;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 31);
    mask = (n == 0) ? 0 : (1 << n) - 1;
    return 0;
}
