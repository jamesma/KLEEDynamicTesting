#include <stdio.h>


int main() {

    int e  = 0;
    int a = 0, b = 0, c = 0, d = 0;

    // Marking input as symbolic
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
    klee_make_symbolic(&c, sizeof(c), "c");
    klee_make_symbolic(&d, sizeof(d), "d");

    if (a > 10) {
        e += 0;

        if (3*b + 27 == 300) {
            // Explored branch: a = 12, b = 91, c = 0, d = 0
            e += 0;
        }
        else if (a + b > 24) {
            // Explored branch: a = 1744830454, b = 805306428, c = 0, d = 0
            e += 1;
        }
        else if (b < 500) {
            // Explored branch: a = 12, b = 0, c = 0, d = 0
            e += 2;
        }
        else if (b < 300) {
            // Infeasible path!
            e += 3;
        }
    }
    else if (d > 0) {
        e += 4;

        if (d < a) {
            // Explored branch: a = 6, b = 0, c = 0, d = 4
            e += 0;
        }
        else if (c + 10 < d) {
            // Explored branch: a = -2147483626, b = 0, c = 2, d = 14
            e += 1;
        }
        else  {
            // Explored branch: a = 0, b = 0, c = 0, d = 2
            e += 2;
        }
    }
    else {
        e += 7;

        if (a + 3*b < 2*c + d) {
            // Explored branch: a = 6, b = -570086236, c = 2030551778, d = -1073741816
            e += 0;
        }
        else {
            // Explored branch: a = 0, b = 0, c = 0, d = 0
            e += 1;
        }
    }

    printf ("%d\n", e);

    return 0;
}
