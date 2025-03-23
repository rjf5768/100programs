#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int power_loop(int base, int exp) {
  int result = 1;
  for (int i = 0; i < exp; i++)
    result *= base;
  return result;
}

int main(void) {
  int base, exp, result;
  klee_make_symbolic(&base, sizeof(base), "base");
  klee_make_symbolic(&exp, sizeof(exp), "exp");
  klee_assume(exp >= 0 && exp <= 10);
  klee_assume(base >= 0 && base <= 10);
  result = power_loop(base, exp);
  if(exp > 0 && result < base)
    klee_assert(0);
  return 0;
}
