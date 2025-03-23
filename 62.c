#include <klee/klee.h>
int main() {
    int a, b, c;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_assume(a >= 0 && a <= 20);
    klee_assume(b >= 0 && b <= 20);
    klee_assume(c >= 0 && c <= 20);

    if (a + b > c) {
        if (a < b && c > 10) {
            a += b;
        } else if (c % 2 == 0) {
            c += a;
        } else {
            b = c - a;
        }
    } else {
        c = a + b;
    }
    return 0;
}
