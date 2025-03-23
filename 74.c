#include <klee/klee.h>
int main() {
    int u, v, w;
    klee_make_symbolic(&u, sizeof(u), "u");
    klee_make_symbolic(&v, sizeof(v), "v");
    klee_make_symbolic(&w, sizeof(w), "w");
    klee_assume(u >= -80 && u <= 80);
    klee_assume(v >= -80 && v <= 80);
    klee_assume(w >= -80 && w <= 80);

    if (((u * v + w) % 15 == 6) && (u + v > w)) {
        if ((u - w) * (v + w) < -300) {
            u = (v * w) + 12;
        } else if ((v * v - u * w) > 180) {
            v = (u * u) + w;
        } else {
            w = (u + v) * (w - 2);
        }
    } else if ((u * v * w) % 20 == 3) {
        u = v + w + 42;
    } else {
        v = u * w - 19;
    }

    return 0;
}