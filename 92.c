#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int start, current, cycles;
    klee_make_symbolic(&start, sizeof(start), "start");
    klee_make_symbolic(&cycles, sizeof(cycles), "cycles");
    klee_assume(start > 0 && start <= 100);
    klee_assume(cycles >= 1 && cycles <= 10);
    current = start;
    for (int i = 0; i < cycles; i++) {
        while (current > 0) {
            current--;
        }
        current = start; // reset after countdown
    }
    return 0;
}
