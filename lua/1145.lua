local x, y = io.read("*n", "*n")
local count = 0

for i = 1, y do
    count = count + 1
    io.write(i)

    if count == x then
        count = 0
        print()
    elseif i ~= y then
        io.write(" ")
    end
end
