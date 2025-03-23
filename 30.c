#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int x, y;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_make_symbolic(&y, sizeof(y), "y");
  int and_val = x & y;
  int or_val  = x | y;
  if(and_val > x || or_val < x)
    klee_assert(0);
  return 0;
}
