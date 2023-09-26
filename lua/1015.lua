local math = require("math")

function calcularDistancia(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

local x1, y1, x2, y2
x1 = io.read("*n")
y1 = io.read("*n")
x2 = io.read("*n")
y2 = io.read("*n")

local distancia = calcularDistancia(x1, y1, x2, y2)
print(string.format("%.4f", distancia))
