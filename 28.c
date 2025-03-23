#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int dividend, divisor, quotient;
  klee_make_symbolic(&dividend, sizeof(dividend), "dividend");
  klee_make_symbolic(&divisor, sizeof(divisor), "divisor");
  klee_assume(divisor != 0);
  quotient = dividend / divisor;
  /* Verify basic division properties */
  if(quotient * divisor > dividend || quotient * divisor < dividend - divisor + 1)
    klee_assert(0);
  return 0;
}
