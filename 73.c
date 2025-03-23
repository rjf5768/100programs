#include <klee/klee.h>
int main() {
    int p, q, r;
    klee_make_symbolic(&p, sizeof(p), "p");
    klee_make_symbolic(&q, sizeof(q), "q");
    klee_make_symbolic(&r, sizeof(r), "r");
    klee_assume(p >= -200 && p <= 200);
    klee_assume(q >= -200 && q <= 200);
    klee_assume(r >= -200 && r <= 200);

    if ((p * q - r) % 10 == 0 && (p + q + r) < 0) {
        if ((p * p + q * q) > (r * r + 100)) {
            p = q * r - 7;
        } else {
            r = p * q + 4;
        }
    } else if ((p - r) * (q + r) > 500) {
        q = p * r - 11;
    } else if ((p + q + r) % 14 == 5) {
        r = q * q - p;
    } else {
        p = (r * r) - (q * p);
    }

    return 0;
}