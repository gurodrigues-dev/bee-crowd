local p = 0
local n

for i = 1, 5 do
    n = io.read("*n")

    if n % 2 == 0 then
        p = p + 1
    end
end

print(string.format("%d valores pares", p))
