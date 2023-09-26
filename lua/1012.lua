function calcularAreaTrianguloRetangulo(base, altura)
    local area = (base * altura) / 2
    return area
end

function calcularAreaCirculo(raio)
    local pi = 3.14159
    local area = pi * raio^2
    return area
end

function calcularAreaTrapezio(base1, base2, altura)
    local area = ((base1 + base2) * altura) / 2
    return area
end

function calcularAreaQuadrado(lado)
    local area = lado^2
    return area
end

function calcularAreaRetangulo(lado1, lado2)
    local area = lado1 * lado2
    return area
end

local A = io.read("*n")

local B = io.read("*n")

local C = io.read("*n")

local areaTriangulo = calcularAreaTrianguloRetangulo(A, C)
local areaCirculo = calcularAreaCirculo(C)
local areaTrapezio = calcularAreaTrapezio(A, B, C)
local areaQuadrado = calcularAreaQuadrado(B)
local areaRetangulo = calcularAreaRetangulo(A, B)

print("TRIANGULO: "..string.format("%.3f", areaTriangulo))
print("CIRCULO: "..string.format("%.3f", areaCirculo))
print("TRAPEZIO: "..string.format("%.3f", areaTrapezio))
print("QUADRADO: "..string.format("%.3f", areaQuadrado))
print("RETANGULO: "..string.format("%.3f", areaRetangulo))
