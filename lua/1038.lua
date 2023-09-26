local i = io.read("*n")
local q = io.read("*n")

local t = {
    [1] = 4.00,
    [2] = 4.50,
    [3] = 5.00,
    [4] = 2.00,
    [5] = 1.50
}

local total = t[i] * q
print(string.format("Total: R$ %.2f", total))
