local arr = {}
local x = io.read("*n")

for i = 1, 10 do
    table.insert(arr, x)
    x = x * 2
end

for i, v in ipairs(arr) do
    print(string.format("N[%d] = %d", i - 1, v))
end
