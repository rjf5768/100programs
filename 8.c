#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int catalan(int n) {
  if(n <= 1) return 1;
  int res = 0;
  for(int i = 0; i < n; i++){
    res += catalan(i) * catalan(n - i - 1);
  }
  return res;
}

int main() {
  int n;
  klee_make_symbolic(&n, sizeof(n), "n");
  klee_assume(n >= 0 && n <= 8);
  int cat = catalan(n);
  return 0;
}
