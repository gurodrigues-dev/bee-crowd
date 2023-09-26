import java.util.*

fun main(args: Array<String>) {
    val sc = Scanner(System.`in`);

    val a: String = sc.next();
    val b: String = sc.next();
    val c: String = sc.next();
    val d: String = sc.next();


    val h1 = a.toInt()
    val m1 = b.toInt()
    val h2 = c.toInt()
    val m2 = d.toInt()

    var hours = h2 - h1
    if (hours < 0) {
        hours = 24 - Math.abs(hours)
    }

    var mins = m2 - m1
    if (mins < 0) {
        hours -= 1
        mins = 60 - Math.abs(mins)
    }

    if (hours < 0) {
        hours = 24 + hours
    }

    if (hours == 0 && mins == 0) {
        hours = 24
    }

    println("O JOGO DUROU $hours HORA(S) E $mins MINUTO(S)")
}