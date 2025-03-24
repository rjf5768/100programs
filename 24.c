#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 10);
  int sum = 0;
  for (int i = 1; i <= n; i++){
    sum += i*i;
  }
  if(sum < 0)
    klee_assert(0);
  return 0;
}
