local function isPrime(n)
    if n <= 1 then
        return false
    end

    for i = 2, math.floor(math.sqrt(n)) do
        if n % i == 0 then
            return false
        end
    end

    return true
end

local n = io.read("*n")

for i = 1, n do
    local x = io.read("*n")

    if isPrime(x) then
        print(x .. " eh primo")
    else
        print(x .. " nao eh primo")
    end
end
