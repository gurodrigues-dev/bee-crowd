local a = io.read("*n")
local b = io.read("*n")
local c = io.read("*n")
local d = io.read("*n")

if b > c and d > a and c + d > a + b and c > 0 and d > 0 and a % 2 == 0 then
    print("Valores aceitos")
else
    print("Valores nao aceitos")
end
