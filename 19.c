#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

unsigned int lcg(unsigned int seed) {
  return (1103515245 * seed + 12345) & 0x7fffffff;
}

int main() {
  unsigned int seed;
  klee_make_symbolic(&seed, sizeof(seed), "seed");
  klee_assume(seed <= 1000);
  unsigned int rand_val = lcg(seed);
  if(rand_val > 0x7fffffff)
    klee_assert(0);
  return 0;
}
