local n = io.read("*n")
local x = io.read("*n")
local v = x
local p = 1

for i = 2, n do
    x = io.read("*n")
    if x < v then
        v = x
        p = i
    end
end

io.write(string.format("Menor valor: %d\nPosicao: %d\n", v, p - 1))
