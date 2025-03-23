#include <klee/klee.h>
int main() {
    int m, n, o;
    klee_make_symbolic(&m, sizeof(m), "m");
    klee_make_symbolic(&n, sizeof(n), "n");
    klee_make_symbolic(&o, sizeof(o), "o");
    klee_assume(m >= -120 && m <= 120);
    klee_assume(n >= -120 && n <= 120);
    klee_assume(o >= -120 && o <= 120);

    if ((m * n + o) % 17 == 7 && (m + o) < n) {
        if ((m * m - o * o) > 400) {
            n = m * o + 9;
        } else if ((m + n + o) % 10 == 2) {
            m = n * o - 13;
        } else {
            o = (m * n) + 14;
        }
    } else if (((m - n) * (o + n)) > 700) {
        o = m * n - 15;
    } else {
        m = (o * o) - (m * n);
    }

    return 0;
}
