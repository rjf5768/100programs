#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int log2_floor(int n) {
  int log = 0;
  while(n > 1) {
    n /= 2;
    log++;
  }
  return log;
}

int main(void) {
  int n, log_val;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 1 && n <= 1024);
  log_val = log2_floor(n);
  if(log_val < 0)
    klee_assert(0);
  return 0;
}
