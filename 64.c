#include <klee/klee.h>
int main() {
    int a, b, c, d;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");
    klee_assume(a >= 0 && a <= 50);
    klee_assume(b >= 0 && b <= 50);
    klee_assume(c >= 0 && c <= 50);
    klee_assume(d >= 0 && d <= 50);

    if (a + b > c + d) {
        if (a % 2 == 0) {
            a = b + d;
        } else {
            c = a - b;
        }
    } else if (a * d < c * b) {
        d = c + b;
    } else {
        a = d - c;
    }
    return 0;
}
