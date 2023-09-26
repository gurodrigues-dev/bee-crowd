while true do
    local x = io.read("*n")

    if x == 0 then
        break
    end

    local sum, count = 0, 0

    repeat
        if x % 2 == 0 then
            count = count + 1
            sum = sum + x
        end

        x = x + 1

        if count == 5 then
            break
        end
    until false

    print(sum)
end
