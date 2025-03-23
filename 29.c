#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, mod;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(b > 0);
  mod = a % b;
  if(mod < 0 || mod >= b)
    klee_assert(0);
  return 0;
}
