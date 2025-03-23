#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int next_power_of_two(int n) {
  int power = 1;
  while(power < n)
    power *= 2;
  return power;
}

int main(void) {
  int n, next;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n > 0 && n <= 100);
  next = next_power_of_two(n);
  if(next < n)
    klee_assert(0);
  return 0;
}
