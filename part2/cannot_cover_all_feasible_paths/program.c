#include <stdio.h>
#include <float.h>

int main() {

    int e  = 0;
    float a = 0.0;
    float b = 0.0;
    float c = 0.0;
    float d = 0.0;

    // Marking input as symbolic
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");

    if (a > 10.0) {
        e += 0;

        if (3.0*b + 27.0 == 300.0) {
            e += 0;
        }
        else if (a + b > 24.0) {
            e += 1;
        }
        else if (b < 500.0) {
            e += 2;
        }
    }
    else if (d > 0.0) {
        e += 4;

        if (d < a) {
            e += 0;
        }
        else if (c + 10.0 < d) {
            e += 1;
        }
        else  {
            e += 2;
        }
    }
    else {
        e += 7;

        if (a + 3.0*b < 2.0*c + d) {
            e += 0;
        }
        else {
            e += 1;
        }
    }

    printf ("%d\n", e);

    return 0;
}
