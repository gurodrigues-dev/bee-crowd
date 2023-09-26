local function printAndClean(arr, t)
    for i, v in ipairs(arr) do
        io.write(string.format("%s[%d] = %d\n", t, i - 1, v))
    end
    return {}
end

local imp = {}
local par = {}
local n

for i = 1, 15 do
    n = io.read("*n")

    if n % 2 == 0 then
        table.insert(par, n)
    else
        table.insert(imp, n)
    end

    if #imp == 5 then
        imp = printAndClean(imp, "impar")
    end

    if #par == 5 then
        par = printAndClean(par, "par")
    end
end

printAndClean(imp, "impar")
printAndClean(par, "par")
