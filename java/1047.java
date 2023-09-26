import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int h1 = scanner.nextInt();
        int m1 = scanner.nextInt();
        int h2 = scanner.nextInt();
        int m2 = scanner.nextInt();

        int hours = h2 - h1;
        if (hours < 0) {
            hours = 24 - Math.abs(hours);
        }

        int mins = m2 - m1;
        if (mins < 0) {
            hours -= 1;
            mins = 60 - Math.abs(mins);
        }

        if (hours < 0) {
            hours = 24 + hours;
        }

        if (hours == 0 && mins == 0) {
            hours = 24;
        }

        System.out.printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)%n", hours, mins);
    }
}