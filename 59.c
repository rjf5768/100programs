#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int n, sum = 0;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 50);
  for (int i = 0; i < n; i++)
    sum += 2 * i;
  if(sum < 0)
    klee_assert(0);
  return 0;
}
