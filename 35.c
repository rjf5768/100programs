#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int int_sqrt(int n) {
  int low = 0, high = n, mid;
  while(low <= high) {
    mid = (low + high) / 2;
    if(mid * mid == n)
      return mid;
    else if(mid * mid < n)
      low = mid + 1;
    else
      high = mid - 1;
  }
  return high;
}

int main(void) {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 100);
  int root = int_sqrt(n);
  if(root * root > n)
    klee_assert(0);
  return 0;
}
