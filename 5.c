#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int binom(int n, int k) {
  if(k == 0 || k == n)
    return 1;
  return binom(n-1, k-1) + binom(n-1, k);
}

int main() {
  int n, k;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_make_symbolic(&k, sizeof(k), "k");
  klee_assume(n >= 0 && n <= 15);
  klee_assume(k >= 0 && k <= n);
  int result = binom(n, k);
  if(result < 1)
    klee_assert(0);
  return 0;
}


