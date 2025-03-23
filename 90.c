#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int n, i = 0, cube;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 100);
    while (1) {
        cube = i * i * i;
        if (cube == n)
            break;
        if (cube > n)
            break;
        i++;
    }
    return 0;
}
