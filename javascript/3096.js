function kamenetsky(n) {
    if (n < 0) {
        return 0;
    }

    if (n <= 1) {
        return 1;
    }

    const x = ((n * Math.log10(n/Math.E)) +
               (Math.log10(2*Math.PI*n) / 2.0));

    return Math.floor(x) + 1;
}

const stdin = require("fs").readFileSync("/dev/stdin", "utf8");
const n = parseFloat(stdin);
console.log(kamenetsky(n));