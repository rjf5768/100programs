#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main() {
  int balance = 100;
  int deposit, withdraw;
  klee_make_symbolic(&deposit, sizeof(deposit), "deposit");
  klee_make_symbolic(&withdraw, sizeof(withdraw), "withdraw");
  klee_assume(deposit >= 0 && deposit <= 50);
  klee_assume(withdraw >= 0 && withdraw <= 50);
  balance += deposit;
  if(withdraw <= balance)
    balance -= withdraw;
  if(balance < 0)
    klee_assert(0);
  return 0;
}

