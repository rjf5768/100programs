#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int sum_digits(int n) {
  int sum = 0;
  while(n > 0) {
    sum += n % 10;
    n /= 10;
  }
  return sum;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0);
  klee_assume(n <= 10);
  int s = sum_digits(n);
  if(s > n)
    klee_assert(0);
  return 0;
}
