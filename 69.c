#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int fib_recursive(int n) {
    if(n <= 1) return n;
    return fib_recursive(n-1) + fib_recursive(n-2);
}

int fib_iterative(int n) {
    if(n <= 1) return n;
    int a = 0, b = 1, c;
    for (int i = 2; i <= n; i++){
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main(void) {
    int n;
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_assume(n >= 0 && n <= 20);
    
    int rec = fib_recursive(n);
    int iter = fib_iterative(n);
    
    if(rec != iter)
        klee_assert(0);
    return 0;
}
