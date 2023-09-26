local x, z, count, sum

x = io.read("*n")

repeat
    z = io.read("*n")
until z > x

sum = x
count = 1

while true do
    sum = sum + x + count
    count = count + 1

    if sum > z then
        break
    end
end

print(count)
