#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int count_digits(int n) {
  int count = 0;
  if(n == 0)
    return 1;
  while(n != 0) {
    count++;
    n /= 10;
  }
  return count;
}

int main(void) {
  int n, digits;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 1000);
  digits = count_digits(n);
  if(digits < 1)
    klee_assert(0);
  return 0;
}
