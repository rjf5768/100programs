#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, c, result;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_make_symbolic(&c, sizeof(c), "c");
  if(a > b) {
    if(b > c)
      result = a;
    else
      result = c;
  } else {
    result = b;
  }
  if(result < a || result < b || result < c)
    klee_assert(0);
  return 0;
}
