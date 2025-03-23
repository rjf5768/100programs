#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int is_prime(int n) {
  if(n < 2) return 0;
  for (int i = 2; i * i <= n; i++)
    if(n % i == 0)
      return 0;
  return 1;
}

int main(void) {
  int n, count = 0;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 2 && n <= 50);
  for (int i = 2; i <= n; i++) {
    if(is_prime(i))
      count++;
  }
  if(count < 0)
    klee_assert(0);
  return 0;
}
