local arr = {}
local x = io.read("*n")
arr[1] = x

for i = 2, 100 do
    x = x / 2
    arr[i] = x
end

for i, v in ipairs(arr) do
    io.write(string.format("N[%d] = %.4f\n", i - 1, v))
end
