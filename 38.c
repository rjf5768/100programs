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

int main(void) {
  int a, b, g;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(a > 0 && b > 0 && a <= 100 && b <= 100);
  g = gcd_iter(a, b);
  /* Two numbers are coprime if gcd equals 1 */
  if(g == 1 && !(a % g == 0 && b % g == 0))
    klee_assert(0);
  return 0;
}
