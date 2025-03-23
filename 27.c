#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, prod;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(a >= -100 && a <= 100);
  klee_assume(b >= -100 && b <= 100);
  prod = a * b;
  /* If b != 0, then prod divided by b should equal a. */
  if(b != 0 && prod / b != a)
    klee_assert(0);
  return 0;
}
