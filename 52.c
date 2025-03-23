#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int a, b, w1, w2, weighted;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_make_symbolic(&w1, sizeof(w1), "w1");
  klee_make_symbolic(&w2, sizeof(w2), "w2");
  klee_assume(w1 >= 0 && w1 <= 10);
  klee_assume(w2 >= 0 && w2 <= 10);
  weighted = a * w1 + b * w2;
  if(weighted < a || weighted < b)
    klee_assert(0);
  return 0;
}
