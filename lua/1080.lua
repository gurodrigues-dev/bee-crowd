local n, pos, maior = 0, 0, 0

for i = 1, 100 do
    n = tonumber(io.read("*n"))
    if n > maior then
        maior = n
        pos = i
    end
end

print(string.format("%d\n%d", maior, pos))
