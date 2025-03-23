#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int gcd(int a, int b) {
  if(b == 0) return a;
  return gcd(b, a % b);
}

int lcm(int a, int b) {
  return (a / gcd(a, b)) * b;
}

int main() {
  int a, b;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(a > 0 && a <= 100);
  klee_assume(b > 0 && b <= 100);
  int l = lcm(a, b);
  if(l % a != 0 || l % b != 0)
    klee_assert(0);
  return 0;
}

