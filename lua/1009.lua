local name = io.read()
local s = io.read("*n")
local v = io.read("*n")

local total = s + 0.15 * v
total = string.format("%.2f", total)

print("TOTAL = R$ "..total)
