#include <klee/klee.h>

int main() {
    int x, y, z;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_make_symbolic(&y, sizeof(y), "y");
    klee_make_symbolic(&z, sizeof(z), "z");
    klee_assume(x >= -50 && x <= 50);
    klee_assume(y >= -50 && y <= 50);
    klee_assume(z >= -50 && z <= 50);

    if ((x * y * z) % 11 == 5 || (x + y + z) > 60) {
        if ((x - y + z) * (x + y - z) < 400) {
            x = y * z + 8;
        } else if ((z * z - y * x) > 250) {
            y = x * x - z;
        } else {
            z = (x + y) * (z - 1);
        }
    } else if ((x * x + y * y - z * z) % 12 == 3) {
        x = y + z + 33;
    } else {
        z = x * y - 27;
    }

    return 0;
}