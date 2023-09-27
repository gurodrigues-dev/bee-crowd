var input = require('fs').readFileSync('/dev/stdin', 'utf8');

function populationIncrease(population, growingRate) {
    var growing = Number.parseInt(population * (growingRate / 100));

    if (growing > 0) {
        return growing;
    }

    return 0;
}

function calculate(populationA, populationB, growingRateA, growingRateB) {
    var futurePopulationA = populationA;
    var futurePopulationB = populationB;
    var year = 0;

    while (futurePopulationA <= futurePopulationB) {
        year++;

        if (year > 100) {
            break;
        }

        futurePopulationA += populationIncrease(
            futurePopulationA,
            growingRateA
        );
        futurePopulationB += populationIncrease(
            futurePopulationB,
            growingRateB
        );
    }

    return year;
}

function main() {
    var lines = input.split("\n");
    var quantity = Number(lines.shift());

    for (var i = 0; i < quantity; i++) {
        var data = lines[i].split(" ").map((value) => Number(value));
        var year = calculate(...data);

        if (year > 100) {
            process.stdout.write(`Mais de 1 seculo.\n`);
        } else {
            process.stdout.write(`${year} anos.\n`);
        }
    }
}

main();