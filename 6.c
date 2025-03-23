#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int power(int base, int exp) {
  if(exp == 0) return 1;
  return base * power(base, exp-1);
}

int main() {
  int base, exp;
  klee_make_symbolic(&base, sizeof(base), "base");
  klee_make_symbolic(&exp, sizeof(exp), "exp");
  klee_assume(exp >= 0 && exp <= 10);
  klee_assume(base >= 0 && base <= 10);
  int result = power(base, exp);
  if(exp > 0 && result < base)
    klee_assert(0);
  return 0;
}

