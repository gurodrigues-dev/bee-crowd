<?php
$input = fgets(STDIN);
$nums = explode(' ', trim($input));
$h1 = intval($nums[0]);
$m1 = intval($nums[1]);
$h2 = intval($nums[2]);
$m2 = intval($nums[3]);

$hours = $h2 - $h1;
if ($hours < 0) {
  $hours = 24 - abs($hours);
}

$mins = $m2 - $m1;
if ($mins < 0) {
  $hours -= 1;
  $mins = 60 - abs($mins);
}

if ($hours < 0) {
  $hours = 24 + $hours;
}

if ($hours == 0 && $mins == 0) {
  $hours = 24;
}

echo "O JOGO DUROU $hours HORA(S) E $mins MINUTO(S)\n";
?>