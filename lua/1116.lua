local n = io.read("*n")

for i = 1, n do
    local x = io.read("*n")
    local y = io.read("*n")

    if y == 0 then
        print("divisao impossivel")
    else
        print(string.format("%.1f", x / y))
    end
end
