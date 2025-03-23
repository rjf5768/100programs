#include <klee/klee.h>

int main() {
    int a, b, c;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_assume(a >= -100 && a <= 100);
    klee_assume(b >= -100 && b <= 100);
    klee_assume(c >= -100 && c <= 100);

    if ((a * c + b * b) % 13 == 7 && (a + b - c) < 50) {
        if ((a * a - c * c) > 300) {
            b = (a + c) * 3;
        } else if ((a + b + c) % 9 == 4) {
            a = b * c - 11;
        } else {
            c = a * b + 17;
        }
    } else if (((a - b) * (c + b)) < -200) {
        c = (a + c) * (b - 2);
    } else {
        b = (c * c) - (a * b);
    }

    return 0;
}