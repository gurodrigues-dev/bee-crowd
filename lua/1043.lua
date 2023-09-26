local a = io.read("*n")
local b = io.read("*n")
local c = io.read("*n")

if math.abs(b - c) < a and a < b + c and math.abs(a - c) < b and b < a + c and math.abs(a - b) < c and c < a + b then
    local r = a + b + c
    print(string.format("Perimetro = %.1f", r))
else
    local r = (a + b) * c / 2
    print(string.format("Area = %.1f", r))
end
