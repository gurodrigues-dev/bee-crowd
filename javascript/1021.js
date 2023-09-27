var input = require("fs").readFileSync("/dev/stdin", "utf8");
var balance = Number(input);

function getNumberOfNotes() {
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

  return `${notes_100} nota(s) de R$ 100.00\n${notes_50} nota(s) de R$ 50.00\n${notes_20} nota(s) de R$ 20.00\n${notes_10} nota(s) de R$ 10.00\n${notes_5} nota(s) de R$ 5.00\n${notes_2} nota(s) de R$ 2.00\n`;
}

function getNumberOfCoins() {
  var balanceInCents = Math.round(balance * 100);

  var coin_100 = Math.floor(balanceInCents / 100);
  balanceInCents = balanceInCents % 100;

  var coin_50 = Math.floor(balanceInCents / 50);
  balanceInCents = balanceInCents % 50;

  var coin_25 = Math.floor(balanceInCents / 25);
  balanceInCents = balanceInCents % 25;

  var coin_10 = Math.floor(balanceInCents / 10);
  balanceInCents = balanceInCents % 10;

  var coin_5 = Math.floor(balanceInCents / 5);
  balanceInCents = balanceInCents % 5;

  var coin_1 = Math.floor(balanceInCents / 1);

  return `${coin_100} moeda(s) de R$ 1.00\n${coin_50} moeda(s) de R$ 0.50\n${coin_25} moeda(s) de R$ 0.25\n${coin_10} moeda(s) de R$ 0.10\n${coin_5} moeda(s) de R$ 0.05\n${coin_1} moeda(s) de R$ 0.01\n`;
}

process.stdout.write(`NOTAS:\n${getNumberOfNotes()}MOEDAS:\n${getNumberOfCoins()}`);