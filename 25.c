#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, sum;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  sum = a + b;
  if(sum - a != b)
    klee_assert(0);
  return 0;
}
