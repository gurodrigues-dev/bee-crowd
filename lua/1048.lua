local ajusts = {0.15, 0.12, 0.1, 0.07, 0.04}
local n = io.read("*n")

local ajust = 0
local percent = ""

if n <= 400 then
    ajust = n * ajusts[1]
    n = n + ajust
    percent = "15"
elseif n > 400 and n <= 800 then
    ajust = n * ajusts[2]
    n = n + ajust
    percent = "12"
elseif n > 800 and n <= 1200 then
    ajust = n * ajusts[3]
    n = n + ajust
    percent = "10"
elseif n > 1200 and n <= 2000 then
    ajust = n * ajusts[4]
    n = n + ajust
    percent = "7"
elseif n > 2000 then
    ajust = n * ajusts[5]
    n = n + ajust
    percent = "4"
end

print(string.format("Novo salario: %.2f", n))
print(string.format("Reajuste ganho: %.2f", ajust))
print(string.format("Em percentual: %s %%", percent))
