#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int n, count = 0, temp;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 1000);
    temp = n;
    do {
        count++;
        temp = temp / 10;
    } while (temp > 0);
    return 0;
}
