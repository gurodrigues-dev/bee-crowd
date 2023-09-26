local pi = 3.14159
local r = io.read("*n")
local a = pi * r ^ 2

a = string.format("%.4f", a)
print("A="..a)
