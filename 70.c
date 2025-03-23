#include <klee/klee.h>
#include <assert.h>
#include <stdio.h>

int main(void) {
    int x;
    klee_make_symbolic(&x, sizeof(x), "x");
    klee_assume(x >= 0 && x <= 1000);
    
    int y = x;
    y = y << 2;          // Left shift by 2 bits.
    y = y >> 1;          // Right shift by 1.
    y = y ^ 0x5A5A;      // XOR with a constant.
    y = y | 0x1234;      // OR with constant.
    y = y & 0xFFFF;      // AND with mask.
    
    for (int i = 0; i < 5; i++){
        y = (y << 1) ^ (y >> 1);
    }
    
    if(y < 0 || y >= 65536)
        klee_assert(0);
    
    return 0;
}
