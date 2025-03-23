#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, xor_val;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  xor_val = a ^ b;
  /* For equal numbers, XOR must yield 0 */
  if(a == b && xor_val != 0)
    klee_assert(0);
  return 0;
}
