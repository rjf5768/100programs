
#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 50);
  int sum = 0;
  for (int i = 1; i <= n; i++){
    sum += i;
  }
  if(sum != n*(n+1)/2)
    klee_assert(0);
  return 0;
}
