const stdin = require("fs").readFileSync("/dev/stdin", "utf8");
const [initHour, initMin, endHour, endMin] = stdin.split(" ");

const print = (hours, minutes) =>
  console.log(`O JOGO DUROU ${hours} HORA(S) E ${minutes} MINUTO(S)`);

let totalHours = Number(endHour) - Number(initHour);
let totalMins = Number(endMin) - Number(initMin);

if (totalHours < 0) totalHours = 24 - Math.abs(totalHours);

if (totalMins < 0) {
  totalHours -= 1;
  totalMins = 60 - Math.abs(totalMins);
}

if (totalHours < 0) totalHours = 24 + totalHours;

if (totalHours === 0 && totalMins === 0) print(24, 0);
else print(totalHours, totalMins);