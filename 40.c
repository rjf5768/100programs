#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int product_of_digits(int n) {
  int prod = 1;
  if(n == 0)
    return 0;
  while(n > 0) {
    prod *= (n % 10);
    n /= 10;
  }
  return prod;
}

int main(void) {
  int n, prod;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 1 && n <= 100);
  prod = product_of_digits(n);
  if(prod < 0)
    klee_assert(0);
  return 0;
}
