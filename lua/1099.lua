local n, x, y, maior, menor, sum = 0, 0, 0, 0, 0, 0

n = io.read("*n")

for _ = 1, n do
    x = io.read("*n")
    y = io.read("*n")

    if y > x then
        maior = y
        menor = x
    else
        maior = x
        menor = y
    end

    sum = 0
    for j = menor + 1, maior - 1 do
        if j % 2 == 1 then
            sum = sum + j
        end
    end

    print(sum)
end
