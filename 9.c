#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int collatz_steps(int n) {
  int steps = 0;
  while(n != 1 && steps < 1000) {
    if(n % 2 == 0)
      n /= 2;
    else
      n = 3 * n + 1;
    steps++;
  }
  return steps;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n > 0);
  klee_assume(n <= 100);
  int steps = collatz_steps(n);
  if(steps >= 1000)
    klee_assert(0);
  return 0;
}
