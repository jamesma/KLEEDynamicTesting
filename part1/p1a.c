#include <stdio.h>


int main() {

    int e  = 0;
    int a = 0, b = 0, c = 0, d = 0;

    // Marking input as symbolic
    klee_make_symbolic(&a, sizeof(a), "a");

    if (a > 10) {
        e += 0;

        if (3*b + 27 == 300) {
            e += 0;
        }
        else if (a + b > 24) {
            // Explored branch: a = 54
            e += 1;
        }
        else if (b < 500) {
            // Explored branch: a = 12
            e += 2;
        }
        else if (b < 300) {
            e += 3;
        }
    }
    else if (d > 0) {
        e += 4;

        if (d < a) {
            e += 0;
        }
        else if (c + 10 < d) {
            e += 1;
        }
        else  {
            e += 2;
        }
    }
    else {
        e += 7;

        if (a + 3*b < 2*c + d) {
            // Explored branch: a = -2147483636
            e += 0;
        }
        else {
            // Explored branch: a = 0
            e += 1;
        }
    }

    printf ("%d\n", e);

    return 0;
}
