local n = io.read("*n")

local inCount, outCount = 0, 0

for i = 1, n do
    local v = io.read("*n")

    if v >= 10 and v <= 20 then
        inCount = inCount + 1
    else
        outCount = outCount + 1
    end
end

print(string.format("%d in", inCount))
print(string.format("%d out", outCount))
