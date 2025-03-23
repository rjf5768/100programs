#include <klee/klee.h>
#include <stdio.h>

int main(void) {
    int state = 0; // possible states: 0, 1, 2
    int input, transitions;
    klee_make_symbolic(&input, sizeof(input), "input");
    klee_make_symbolic(&transitions, sizeof(transitions), "transitions");
    klee_assume(transitions >= 1 && transitions <= 20);
    for (int i = 0; i < transitions; i++) {
        if (input % 3 == 0)
            state = (state + 1) % 3;
        else if (input % 3 == 1)
            state = (state + 2) % 3;
        else
            state = state; // no change
    }
    return 0;
}
