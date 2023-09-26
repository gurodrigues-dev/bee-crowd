local function isPerfect(n)
    local sum = 0
    for i = 1, n - 1 do
        if sum > n then
            break
        end
        if n % i == 0 then
            sum = sum + i
        end
    end

    return sum == n
end

local n = io.read("*n")

for i = 1, n do
    local x = io.read("*n")

    if isPerfect(x) then
        print(x .. " eh perfeito")
    else
        print(x .. " nao eh perfeito")
    end
end
