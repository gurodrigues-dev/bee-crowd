while true do
    local m = io.read("*n")
    local n = io.read("*n")

    if n <= 0 or m <= 0 then
        break
    end

    local maior, menor = m, n
    if n > m then
        maior, menor = n, m
    end

    local sum = 0
    for i = menor, maior do
        sum = sum + i
        io.write(string.format("%d ", i))
    end

    print(string.format("Sum=%d", sum))
end
