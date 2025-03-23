#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int evaluate(int a, int b, char op) {
  if(op == '+') return a + b;
  if(op == '-') return a - b;
  if(op == '*') return a * b;
  if(op == '/') return (b != 0) ? a / b : 0;
  return 0;
}

int main() {
  int a, b;
  char op;
  klee_make_symbolic(&a, sizeof(a), "a");
  klee_make_symbolic(&b, sizeof(b), "b");
  klee_make_symbolic(&op, sizeof(op), "op");
  klee_assume(op == '+' || op == '-' || op == '*' || op == '/');
  if(op == '/')
    klee_assume(b != 0);
  int result = evaluate(a, b, op);
  (void) result;
  return 0;
}
