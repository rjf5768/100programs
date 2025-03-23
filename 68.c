#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int factorial(int n) {
    int result = 1;
    for (int i = 1; i <= n; i++){
        result *= i;
        if(result < 0)
            return -1; // Overflow indication
    }
    return result;
}

int main(void) {
    int n;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 12);
    
    int fact = factorial(n);
    if(n > 0 && fact <= 0)
        klee_assert(0);
    return 0;
}
