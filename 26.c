#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int x, y, diff;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_make_symbolic(&y, sizeof(y), "y");
  diff = x - y;
  if(diff + y != x)
    klee_assert(0);
  return 0;
}
