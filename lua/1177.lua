local arr = {}
local x, n = io.read("*n"), 0

for i = 1, 1000 do
    table.insert(arr, n)
    n = n + 1
    if n >= x then
        n = 0
    end
end

for i, v in ipairs(arr) do
    io.write(string.format("N[%d] = %d\n", i - 1, v))
end
