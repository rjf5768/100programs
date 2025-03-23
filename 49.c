#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 100);
  while(n > 0)
    n--;
  if(n != 0)
    klee_assert(0);
  return 0;
}
