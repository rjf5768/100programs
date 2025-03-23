#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int is_power_of_two(int n) {
  if(n <= 0)
    return 0;
  return ((n & (n - 1)) == 0);
}

int main(void) {
  int n, pow2;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n > 0 && n <= 1024);
  pow2 = is_power_of_two(n);
  return 0;
}
