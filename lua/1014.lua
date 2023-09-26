local a = io.read("*n")
local b = io.read("*n")

local t = a / b

t = string.format("%.3f", t)

print(t.." km/l")
