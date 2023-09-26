local n, sum, count = 0, 0, 0

repeat
    n = io.read("*n")

    if n >= 0 then
        count = count + 1
        sum = sum + n
    end
until n < 0

print(string.format("%.2f", sum / count))
