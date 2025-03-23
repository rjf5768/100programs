#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int is_armstrong(int n) {
  int original = n, sum = 0;
  while(n > 0) {
    int digit = n % 10;
    sum += digit * digit * digit;
    n /= 10;
  }
  return (sum == original);
}

int main(void) {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 1 && n <= 1000);
  int arm = is_armstrong(n);
  return 0;
}
