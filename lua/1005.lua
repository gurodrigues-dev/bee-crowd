local a = io.read("*n")
local b = io.read("*n")

local m = (a * 3.5 + b * 7.5) / 11
m = string.format("%.5f", m)

print("MEDIA = "..m)
