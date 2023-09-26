local count = 0
local sum = 0.0

while true do
    local v = io.read("*n")

    if v < 0 or v > 10 then
        print("nota invalida")
    else
        sum = sum + v
        count = count + 1
    end

    if count == 2 then
        break
    end
end

print(string.format("media = %.2f", sum / 2))
