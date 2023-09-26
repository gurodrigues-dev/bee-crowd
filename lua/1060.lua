local p = 0
local n

for i = 1, 6 do
    n = io.read("*n")

    if n > 0 then
        p = p + 1
    end
end

print(string.format("%d valores positivos", p))
