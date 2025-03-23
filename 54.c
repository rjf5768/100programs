#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int x, y, result;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_make_symbolic(&y, sizeof(y), "y");
  result = (x >= y) ? (x + y) : (x - y);
  if(x >= y && result < x)
    klee_assert(0);
  return 0;
}
