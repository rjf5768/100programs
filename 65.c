#include <klee/klee.h>
int main() {
    int x, y, z;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");
    klee_make_symbolic(&z, sizeof(z), "z");
    klee_assume(x >= -5 && x <= 5);
    klee_assume(y >= -5 && y <= 5);
    klee_assume(z >= -5 && z <= 5);

    if ((x * y * z) == 0) {
        x = y + z;
    } else if (x + y + z > 0) {
        if (x > 0) {
            x -= 1;
        } else {
            y += 1;
        }
    } else {
        z = x * y;
    }
    return 0;
}

