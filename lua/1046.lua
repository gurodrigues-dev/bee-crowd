local a = io.read("*n")
local b = io.read("*n")

if a >= b then
    b = b + 24
end

print(string.format("O JOGO DUROU %d HORA(S)", b - a))
