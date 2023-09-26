local n
local ddd = {
    [61] = "Brasilia",
    [71] = "Salvador",
    [11] = "Sao Paulo",
    [21] = "Rio de Janeiro",
    [32] = "Juiz de Fora",
    [19] = "Campinas",
    [27] = "Vitoria",
    [31] = "Belo Horizonte",
}

n = io.read("*n")

local r = ddd[n]

if r == nil then
    r = "DDD nao cadastrado"
end

print(r)
