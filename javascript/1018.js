var input = require("fs").readFileSync("/dev/stdin", "utf8");
var balance = Number(input);

function getNumberOfNotes(balance) {
  var notes_100 = Math.floor(balance / 100);
  balance = balance % 100;

  var notes_50 = Math.floor(balance / 50);
  balance = balance % 50;

  var notes_20 = Math.floor(balance / 20);
  balance = balance % 20;

  var notes_10 = Math.floor(balance / 10);
  balance = balance % 10;

  var notes_5 = Math.floor(balance / 5);
  balance = balance % 5;

  var notes_2 = Math.floor(balance / 2);
  balance = balance % 2;

  var notes_1 = Math.floor(balance / 1);

  return `${notes_100} nota(s) de R$ 100,00\n${notes_50} nota(s) de R$ 50,00\n${notes_20} nota(s) de R$ 20,00\n${notes_10} nota(s) de R$ 10,00\n${notes_5} nota(s) de R$ 5,00\n${notes_2} nota(s) de R$ 2,00\n${notes_1} nota(s) de R$ 1,00\n`;
}

process.stdout.write(`${balance}\n${getNumberOfNotes(balance)}`);