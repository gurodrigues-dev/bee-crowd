var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

function calculateAverage(n1, n2, n3, n4) {
    return (n1 * 2 + n2 * 3 + n3 * 4 + n4 * 1) / 10;
}

function calculateFinalAverage(n1, n2) {
    return (n1 + n2) / 2;
}

function checkExamStatus(score) {
    if (score >= 7.0) {
        return "Aluno aprovado.";
    }

    if (score < 5.0) {
        return "Aluno reprovado.";
    }

    return "Aluno em exame.";
}

function recalculateExamStatus(score) {
    if (score >= 5.0) {
        return "Aluno aprovado.";
    }

    if (score < 4.9) {
        return "Aluno reprovado.";
    }
}

function main() {
    var scores1 = lines[0].split(" ").map((score) => Number(score));
    var score2 = Number(lines[1]);

    var average = calculateAverage(...scores1);
    var status = checkExamStatus(average);

    process.stdout.write(`Media: ${average.toFixed(1)}\n`);
    process.stdout.write(`${status}\n`);

    if (score2) {
        var newStatus = recalculateExamStatus(score2);
        var finalAverage = calculateFinalAverage(average, score2);

        process.stdout.write(`Nota do exame: ${score2.toFixed(1)}\n`);
        process.stdout.write(`${newStatus}\n`);
        process.stdout.write(`Media final: ${finalAverage.toFixed(1)}\n`);
    }
}

main();