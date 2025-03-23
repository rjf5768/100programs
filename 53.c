#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, result;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  result = (a > b) ? a - b : b - a;
  if(result < 0)
    klee_assert(0);
  return 0;
}
