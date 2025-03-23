#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int hanoi_moves(int n) {
  if(n <= 0) return 0;
  if(n == 1) return 1;
  return 2 * hanoi_moves(n - 1) + 1;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0);
  klee_assume(n <= 10);
  int moves = hanoi_moves(n);
  if(n > 0 && moves != ((1 << n) - 1))
    klee_assert(0);
  return 0;
}
