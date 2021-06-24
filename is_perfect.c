// Keszitette: Varga Klaudia (QBB82W)


#include <stdio.h>

extern int is_perfect(int value);

int main() {
    int num1 = is_perfect(6), num2 = is_perfect(28), num3 = is_perfect(496);  // tokeletes szamok
    int num4 = is_perfect(1), num5 = is_perfect(47), num6 = is_perfect(670);  // nem tokeletes szamok

    printf("Tokeletes szam? %d\n", num1);
    printf("Tokeletes szam? %d\n", num2);
    printf("Tokeletes szam? %d\n", num3);

    printf("Tokeletes szam? %d\n", num4);
    printf("Tokeletes szam? %d\n", num5);
    printf("Tokeletes szam? %d\n", num6);
    
    return 0;
}
