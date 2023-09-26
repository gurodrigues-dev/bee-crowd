local n = io.read("*n")

for i = 1, 10 do
    print(string.format("%d x %d = %d", i, n, i * n))
end
