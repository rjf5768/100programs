#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int fib(int n) {
  if(n <= 1) return n;
  return fib(n - 1) + fib(n - 2);
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0);
  klee_assume(n <= 10); // Keep recursion depth reasonable
  int result = fib(n);
  if(result < 0)
    klee_assert(0);
  return 0;
}


