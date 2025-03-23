#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int is_prime(int n) {
  if(n <= 1) return 0;
  for(int i = 2; i*i <= n; i++){
    if(n % i == 0)
      return 0;
  }
  return 1;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0);
  klee_assume(n <= 100);
  int prime = is_prime(n);
  return 0;
}
