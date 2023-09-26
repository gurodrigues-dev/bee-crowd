#include <iostream>
#include <cmath>

int main() {
    int h1, m1, h2, m2, hours, mins;
    std::cin >> h1 >> m1 >> h2 >> m2;

    hours = h2 - h1;
    if (hours < 0) {
        hours = 24 - std::abs(hours);
    }

    mins = m2 - m1;
    if (mins < 0) {
        hours -= 1;
        mins = 60 - std::abs(mins);
    }

    if (hours < 0) {
        hours = 24 + hours;
    }

    if (hours == 0 && mins == 0) {
        hours = 24;
    }

    std::cout << "O JOGO DUROU " << hours << " HORA(S) E " << mins << " MINUTO(S)" << std::endl;

    return 0;
}