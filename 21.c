#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int valid_date(int day, int month) {
  if(month < 1 || month > 12) return 0;
  if(day < 1) return 0;
  if(month == 2) {
    if(day > 29) return 0;
  } else if(month == 4 || month == 6 || month == 9 || month == 11) {
    if(day > 30) return 0;
  } else {
    if(day > 31) return 0;
  }
  return 1;
}

int main() {
  int day, month;
  klee_make_symbolic(&day, sizeof(day), "day");
  klee_make_symbolic(&month, sizeof(month), "month");
  klee_assume(day >= 0 && day <= 40);
  klee_assume(month >= 0 && month <= 15);
  int valid = valid_date(day, month);
  if(valid && (month < 1 || month > 12))
    klee_assert(0);
  return 0;
}
