#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int gcd_iter(int a, int b) {
  while(b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int lcm_iter(int a, int b) {
  return (a / gcd_iter(a, b)) * b;
}

int main(void) {
  int a, b, l;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(a > 0 && b > 0 && a <= 100 && b <= 100);
  l = lcm_iter(a, b);
  if(l % a != 0 || l % b != 0)
    klee_assert(0);
  return 0;
}
