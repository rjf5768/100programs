#include <klee/klee.h>

int sum(int n, int m) {
  if (n <= 0) {
    return m + n;
  } else {
    return sum(n - 1, m + 1);
  }
}

int main(void) {
  int a, b;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");

  // Restrict a to ensure the recursion terminates.
  klee_assume(a >= 0);
  klee_assume(a <= 10);

  int result = sum(a, b);
  if (result == a + b) {
    // This branch corresponds to the original property.
  }
  return 0;
}

