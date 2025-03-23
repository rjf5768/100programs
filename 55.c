#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, c, d, result;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_make_symbolic(&c, sizeof(c), "c");
  klee_make_symbolic(&d, sizeof(d), "d");
  klee_assume(b != 0 && d != 0);
  result = (a * c) + (b / d) - (a - c);
  if(result < -1000 || result > 1000)
    klee_assert(0);
  return 0;
}
