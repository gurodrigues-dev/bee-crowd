local arr = {}
for i = 1, 20 do
    local x = io.read("*n")
    table.insert(arr, x)
end

for i, _ in ipairs(arr) do
    print(string.format("N[%d] = %d", i - 1, arr[#arr - (i - 1)]))
end
