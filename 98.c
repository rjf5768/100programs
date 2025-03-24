#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int steps, pos = 0, step;
    klee_make_symbolic(&steps, sizeof(steps), "steps");
    klee_assume(steps >= 1 && steps <= 10);
    for (int i = 0; i < steps; i++) {
        klee_make_symbolic(&step, sizeof(step), "step");
        klee_assume(step >= -1 && step <= 1);
        pos = pos + step;
    }
    return 0;
}
