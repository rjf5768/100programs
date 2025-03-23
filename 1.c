#include <klee/klee.h>

int solve(int a, int b) {
  if (200 * a + 150 * b <= 4000 && 100 * a + 250 * b >= 0)
    return 1;
  else
    return 0;
}

int main() {
  int x, y;
  klee_make_symbolic(&x, sizeof(x), "x");
  klee_make_symbolic(&y, sizeof(y), "y");

  if (!solve(x, y)) {
    return 0; // condition met (not solvable)
  } else {
    return 1; // condition failed (solvable)
  }
}