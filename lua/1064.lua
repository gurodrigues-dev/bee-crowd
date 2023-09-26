local p = 0
local n = 0
local t = 0

for i = 1, 6 do
    n = io.read("*n")

    if n > 0 then
        p = p + 1
        t = t + n
    end
end

print(string.format("%d valores positivos", p))

if p > 0 then
    print(string.format("%.1f", t / p))
else
    print("Nenhum valor positivo foi inserido")
end
