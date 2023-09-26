local function fastFibonacci(N)
    if N <= 1 then
        return N
    end

    local a, b = 0, 1
    for i = 2, N do
        a, b = b, a + b
    end
    return b
end

local n = io.read("*n")

for i = 1, n do
    local x = io.read("*n")
    io.write(string.format("Fib(%d) = %d\n", x, fastFibonacci(x)))
end
