local a = io.read("*n")
local b = io.read("*n")
local c = io.read("*n")

local delta = b^2 - 4*a*c

if delta < 0 or a == 0 then
    print("Impossivel calcular")
    return
end

local r1 = (-b + math.sqrt(delta)) / (2 * a)
local r2 = (-b - math.sqrt(delta)) / (2 * a)

print(string.format("R1 = %.5f", r1))
print(string.format("R2 = %.5f", r2))
