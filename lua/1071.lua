local a = io.read("*n")
local b = io.read("*n")

local start, endVal, sum = a, b, 0

if a > b then
    start, endVal = b, a
end

for i = start + 1, endVal - 1 do
    if math.abs(i % 2) == 1 then
        sum = sum + i
    end
end

print(sum)
