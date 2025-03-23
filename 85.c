#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int a, b, c;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_assume(a >= 0 && a <= 50);
    klee_assume(b >= 0 && b <= 50);
    klee_assume(c >= 0 && c <= 50);
    
    int result = 0;
    if(a > b && b > c)
        result = a - b + c;
    else if(a < b || c > b)
        result = a + c - b;
    else
        result = a * b * c;
    if(result < -100 || result > 1000)
        klee_assert(0);
    return 0;
}
