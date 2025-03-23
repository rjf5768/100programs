#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main() {
  int current_floor = 0;
  int request;
  klee_make_symbolic(&request, sizeof(request), "request");
  klee_assume(request >= 0 && request <= 10);
  if(request > current_floor)
    current_floor = request;
  if(request > 0 && current_floor < request)
    klee_assert(0);
  return 0;
}
