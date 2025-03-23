#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int reverse_int(int n) {
  int rev = 0;
  while(n != 0) {
    rev = rev * 10 + (n % 10);
    n /= 10;
  }
  return rev;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 10000);
  int rev = reverse_int(n);
  return 0;
}
