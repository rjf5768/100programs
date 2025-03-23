#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int is_perfect_square(int n) {
  if(n < 0) return 0;
  int i = 0;
  while(i * i < n) i++;
  return (i * i == n);
}

int main(void) {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 100);
  int ps = is_perfect_square(n);
  if(ps && !is_perfect_square(n))
    klee_assert(0);
  return 0;
}


