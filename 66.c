#include <klee/klee.h>
int main() {
    int a, b, c, d, e;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");
    klee_make_symbolic(&e, sizeof(e), "e");
    klee_assume(a >= 0 && a <= 100);
    klee_assume(b >= 0 && b <= 100);
    klee_assume(c >= 0 && c <= 100);
    klee_assume(d >= 0 && d <= 100);
    klee_assume(e >= 0 && e <= 100);

    if ((a + b + c) % 4 == 0) {
        if (d > e) {
            d = a + b;
        } else {
            e = c + d;
        }
    } else if (a < b && c < d) {
        a = e - b;
    } else {
        c = a + e;
    }
    return 0;
}
