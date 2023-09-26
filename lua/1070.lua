local n = io.read("*n")
local tot = 0

while true do
    if n % 2 == 1 then
        print(n)
        tot = tot + 1
    end
    n = n + 1

    if tot == 6 then
        break
    end
end
