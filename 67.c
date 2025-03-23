#include <klee/klee.h>

int main() {
    int a, b, c;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_assume(a >= -50 && a <= 50);
    klee_assume(b >= -50 && b <= 50);
    klee_assume(c >= -50 && c <= 50);

    if ((a * a + b * b) < (c * c) && (a + b + c) % 7 == 3) {
        if ((a * b * c) % 5 == 2 && (a - c) < (b + c)) {
            a = (a * b) - c;
        } else if ((a + b) * c < 0 && (c % 4) == 1) {
            c = (a - b) * (c + 1);
        } else if ((a + c) % 6 == 0 || (b - c) > 20) {
            b = a + c + 10;
        }
    } else if ((a - b + c) * (a + b - c) > 1000) {
        if (a > b && b > c) {
            c = a * b * c;
        } else if ((a * c) % 9 == 4) {
            a = b * c + 5;
        } else {
            b = (a + c) * 2;
        }
    } else if (((a * a) - (b * c)) > 500) {
        a = (b + c) * (a - 1);
    } else {
        c = a * a + b * b;
    }

    return 0;
}
