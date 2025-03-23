#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int x;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_assume(x >= 10 && x <= 20);
  if(x < 10 || x > 20)
    klee_assert(0);
  return 0;
}
