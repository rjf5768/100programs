#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int fib_iter(int n) {
  if(n <= 1)
    return n;
  int a = 0, b = 1, c;
  for (int i = 2; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
  }
  return b;
}

int main(void) {
  int n, f;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 20);
  f = fib_iter(n);
  if(f < 0)
    klee_assert(0);
  return 0;
}
