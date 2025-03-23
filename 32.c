#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int absolute(int x) {
  return (x < 0) ? -x : x;
}

int main(void) {
  int x, abs_val;
  klee_make_symbolic(&x, sizeof(x), "x");
  abs_val = absolute(x);
  if(x < 0 && abs_val != -x)
    klee_assert(0);
  if(x >= 0 && abs_val != x)
    klee_assert(0);
  return 0;
}
