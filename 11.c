#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int modexp(int base, int exp, int mod) {
  int result = 1;
  base = base % mod;
  while(exp > 0) {
    if(exp % 2 == 1)
      result = (result * base) % mod;
    exp = exp / 2;
    base = (base * base) % mod;
  }
  return result;
}

int main() {
  int base, exp, mod;
  klee_make_symbolic(&base, sizeof(base), "base");
  klee_make_symbolic(&exp, sizeof(exp), "exp");
  klee_make_symbolic(&mod, sizeof(mod), "mod");
  klee_assume(mod > 1);
  klee_assume(exp >= 0 && exp <= 20);
  klee_assume(base >= 0 && base <= 100);
  int result = modexp(base, exp, mod);
  if(result < 0 || result >= mod)
    klee_assert(0);
  return 0;
}
