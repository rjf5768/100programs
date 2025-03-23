#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int is_int_palindrome(int n) {
  int original = n, reversed = 0;
  while(n > 0) {
    reversed = reversed * 10 + (n % 10);
    n /= 10;
  }
  return original == reversed;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 100);
  int result = is_int_palindrome(n);
  return 0;
}
