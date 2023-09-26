local n = io.read("*n")

for i = 1, n do
    local x, y = io.read("*n", "*n")
    local sum, count = 0, 0

    while count < y do
        if x % 2 ~= 0 then
            count = count + 1
            sum = sum + x
        end

        x = x + 1
    end

    print(sum)
end
