# 0 "matematica.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "matematica.c"







# 1 "matematica.h" 1
# 19 "matematica.h"
double area_circulo(double radio);
int factorial(int n);

double potencia(double base, int exp);
# 9 "matematica.c" 2





double area_circulo(double radio) {
    return 3.14159265358979 * ((radio) * (radio));
}





int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}
double potencia(double a, int exp) {
    double total = 1;
    for (int i = 0; i < exp; i++) {
        total = total * a;
    }
    return total;
}
