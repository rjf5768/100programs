#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int op, a, b, result = 0;
  klee_make_symbolic(&op, sizeof(op), "op");
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_assume(op >= 0 && op <= 3);
  switch(op) {
    case 0: result = a + b; break;
    case 1: result = a - b; break;
    case 2: result = a * b; break;
    case 3:
      klee_assume(b != 0);
      result = a / b; break;
  }
  return 0;
}
