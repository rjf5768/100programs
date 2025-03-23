#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int modexp(int base, int exp, int mod) {
    int result = 1;
    while(exp > 0) {
        if(exp % 2 == 1)
            result = (result * base) % mod;
        exp /= 2;
        base = (base * base) % mod;
    }
    return result;
}

int main(void) {
    int base, exp, mod;
    klee_make_symbolic(&base, sizeof(base), "base");
    klee_make_symbolic(&exp, sizeof(exp), "exp");
    klee_make_symbolic(&mod, sizeof(mod), "mod");
    klee_assume(mod > 1 && mod <= 100);
    klee_assume(exp >= 0 && exp <= 20);
    klee_assume(base >= 0 && base < mod);
    int r = modexp(base, exp, mod);
    if(r < 0 || r >= mod)
        klee_assert(0);
    return 0;
}
