local cedulas = {100, 50, 20, 10, 5, 2, 1}

local n = tonumber(io.read())
print(n)

for _, c in ipairs(cedulas) do
    print(string.format("%d nota(s) de R$ %d,00", math.floor(n / c), c))
    n = n % c
end
