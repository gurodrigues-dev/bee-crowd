local arr = {}
for i = 1, 100 do
    local x = io.read("*n")
    table.insert(arr, x)
end

for i, v in ipairs(arr) do
    if v <= 10 then
        print(string.format("A[%d] = %.1f", i - 1, v))
    end
end
