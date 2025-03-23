#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
  int minutes, hour, min;
  klee_make_symbolic(&minutes, sizeof(minutes), "minutes");
  klee_assume(minutes >= 0 && minutes < 1440); // minutes in a day
  hour = minutes / 60;
  min = minutes % 60;
  if(hour < 0 || min < 0 || min >= 60)
    klee_assert(0);
  return 0;
}
