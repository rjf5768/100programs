#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int dividend, divisor, quotient = 0, remainder;
    klee_make_symbolic(&dividend, sizeof(dividend), "dividend");
    klee_make_symbolic(&divisor, sizeof(divisor), "divisor");
    klee_assume(divisor > 0 && divisor <= 100);
    klee_assume(dividend >= 0 && dividend <= 1000);
    remainder = dividend;
    while (remainder >= divisor) {
        remainder = remainder - divisor;
        quotient++;
    }
    return 0;
}
