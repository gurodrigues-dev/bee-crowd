local a = io.read("*n")
local b = io.read("*n")
local c = io.read("*n")

local m = (a * 2 + b * 3 + c * 5) / 10
m = string.format("%.1f", m)

print("MEDIA = "..m)
