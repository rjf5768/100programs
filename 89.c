#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int n, i = 0, sq;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 100);
    while (1) {
        sq = i * i;
        if (sq == n)
            break;
        if (sq > n)
            break;
        i++;
    }
    return 0;
}
