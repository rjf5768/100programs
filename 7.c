#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int gcd(int a, int b) {
  if(b == 0)
    return a;
  return gcd(b, a % b);
}

int main() {
  int a, b;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(a > 0);
  klee_assume(b > 0);
  klee_assume(a <= 100);
  klee_assume(b <= 100);
  int result = gcd(a, b);
  if(a % result != 0 || b % result != 0)
    klee_assert(0);
  return 0;
}
