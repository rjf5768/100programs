#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int factorial(int n) {
  if(n <= 1) return 1;
  return n * factorial(n - 1);
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0);
  klee_assume(n <= 10); // Limit to avoid overflow
  int result = factorial(n);
  if(result <= 0)
    klee_assert(0);
  return 0;
}


