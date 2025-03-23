#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int piecewise(int x) {
  if(x < 10)
    return x * x;
  else
    return 2 * x + 1;
}

int main(void) {
  int x, y;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_assume(x >= 0 && x <= 20);
  y = piecewise(x);
  if(x < 10 && y != x * x)
    klee_assert(0);
  return 0;
}
