local x, y, sum

x = io.read("*n")

repeat
    y = io.read("*n")
until y > 0

sum = 0

for i = 0, y - 1 do
    sum = sum + x + i
end

print(sum)
