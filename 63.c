#include <klee/klee.h>
int main() {
    int x, y;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");
    klee_assume(x >= -10 && x <= 10);
    klee_assume(y >= -10 && y <= 10);

    if ((x * y) % 3 == 0) {
        if (x > y) {
            x = y + 2;
        } else if (x < y) {
            y = x - 2;
        }
    } else if (x + y > 0) {
        x = y;
    } else {
        y = x;
    }
    return 0;
}
