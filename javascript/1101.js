var input = require("fs").readFileSync("/dev/stdin", "utf8");

function calculateSumOfNumbers(numbers) {
    return numbers.reduce((accumulator, current) => accumulator + current, 0);
}

function getSequenceOfNumbers(start, end) {
    var sequence = [];

    for (let i = start; i <= end; i++) {
        sequence.push(i);
    }

    return sequence;
}

function main() {
    var numbers = input.split("\n");

    for (var i = 0; i < numbers.length; i++) {
        var [start, end] = numbers[i]
            .split(" ")
            .map((value) => Number(value))
            .sort((a, b) => a - b);

        if (start <= 0 || end <= 0) {
            break;
        }

        var sequenceOfNumbers = getSequenceOfNumbers(start, end);
        var sumOfNumbers = calculateSumOfNumbers(sequenceOfNumbers);

        process.stdout.write(
            `${sequenceOfNumbers.join(" ")} Sum=${sumOfNumbers}\n`
        );
    }
}

main();