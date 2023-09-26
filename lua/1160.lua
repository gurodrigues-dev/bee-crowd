local function calculateYears(pa, pb, g1, g2)
    local anos = 0
    while anos <= 100 and pa <= pb do
        anos = anos + 1
        pa = pa + math.floor(pa * (g1 / 100))
        pb = pb + math.floor(pb * (g2 / 100))
    end

    if anos > 100 then
        return "Mais de 1 seculo."
    else
        return anos .. " anos."
    end
end

local n = io.read("*n")

for i = 1, n do
    local pa, pb, g1, g2 = io.read("*n", "*n", "*n", "*n")
    local result = calculateYears(pa, pb, g1, g2)
    print(result)
end
