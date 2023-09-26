local n = io.read("*n")

for i = 1, n do
    local n1 = io.read("*n")
    local n2 = io.read("*n")
    local n3 = io.read("*n")

    local m = (n1 * 2 + n2 * 3 + n3 * 5) / 10
    print(string.format("%.1f", m))
end

