local function fibonacci(n)
    local a, b = 0, 1

    for i = 1, n do
        a, b = b, a + b
    end

    return a
end

local n = io.read("*n")
local output = ""

for i = 0, n - 1 do
    output = output .. fibonacci(i)

    if i < n - 1 then
        output = output .. " "
    end
end

print(output)
