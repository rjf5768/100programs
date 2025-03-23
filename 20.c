#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int factorial_iter(int n) {
  int result = 1;
  for (int i = 2; i <= n; i++){
    result *= i;
  }
  return result;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 10);
  int result = factorial_iter(n);
  if(result <= 0)
    klee_assert(0);
  return 0;
}
