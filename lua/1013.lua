local a = io.read("*n")
local b = io.read("*n")
local c = io.read("*n")

local m = ( a + b + math.abs(a-b) ) / 2
m = ( m + c + math.abs(m-c) ) / 2

m = string.format("%.0f", m)

print(m.." eh o maior")
