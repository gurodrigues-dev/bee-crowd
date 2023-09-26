object Main extends App {
  val input = scala.io.StdIn.readLine()
  val nums = input.split(" ")
  val h1 = nums(0).toInt
  val m1 = nums(1).toInt
  val h2 = nums(2).toInt
  val m2 = nums(3).toInt

  var hours = h2 - h1
  if (hours < 0) {
    hours = 24 - math.abs(hours)
  }

  var mins = m2 - m1
  if (mins < 0) {
    hours -= 1
    mins = 60 - math.abs(mins)
  }

  if (hours < 0) {
    hours = 24 + hours
  }

  if (hours == 0 && mins == 0) {
    hours = 24
  }

  println(s"O JOGO DUROU $hours HORA(S) E $mins MINUTO(S)")
}