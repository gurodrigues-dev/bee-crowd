local arr = {}
local x = 0

for _ = 1, 10 do
    x = io.read("*n")
    if x <= 0 then
        x = 1
    end

    table.insert(arr, x)
end

for i, v in ipairs(arr) do
    print(string.format("X[%d] = %d", i - 1, v))
end
