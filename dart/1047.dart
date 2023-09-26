import 'dart:io';

void main() {
  final nums = stdin.readLineSync()!.split(' ');
  final h1 = int.parse(nums[0]);
  final m1 = int.parse(nums[1]);
  final h2 = int.parse(nums[2]);
  final m2 = int.parse(nums[3]);

  var hours = h2 - h1;
  if (hours < 0) {
    hours = 24 - hours.abs();
  }

  var mins = m2 - m1;
  if (mins < 0) {
    hours -= 1;
    mins = 60 - mins.abs();
  }

  if (hours < 0) {
    hours = 24 + hours;
  }

  if (hours == 0 && mins == 0) {
    hours = 24;
  }

  print('O JOGO DUROU $hours HORA(S) E $mins MINUTO(S)');
}