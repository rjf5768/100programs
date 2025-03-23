#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int sum_squares_digits(int n) {
  int sum = 0;
  while(n > 0) {
    int d = n % 10;
    sum += d * d;
    n /= 10;
  }
  return sum;
}

int main(void) {
  int n, sumsq;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 1 && n <= 100);
  sumsq = sum_squares_digits(n);
  if(sumsq < 0)
    klee_assert(0);
  return 0;
}
