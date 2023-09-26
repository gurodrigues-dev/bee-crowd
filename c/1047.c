#include <stdio.h>
#include <math.h>

int main() {
    int h1, m1, h2, m2, hours, mins;
    scanf("%d", &h1);
    scanf("%d", &m1);
    scanf("%d", &h2);
    scanf("%d", &m2);

    hours = h2 - h1;
    if (hours < 0) {
        hours = 24 - abs(hours);
    }

    mins = m2 - m1;
    if (mins < 0) {
        hours -= 1;
        mins = 60 - abs(mins);
    }

    if (hours < 0) {
        hours = 24 + hours;
    }

    if (hours == 0 && mins == 0) {
        hours = 24;
    }

    printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", hours, mins);

    return 0;
}