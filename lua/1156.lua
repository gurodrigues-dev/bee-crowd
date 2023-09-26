local function seqSII(x, y)
    if x == 39 then
        return x / y
    end

    return (x / y) + seqSII(x + 2, y * 2)
end

print(string.format("%.2f", seqSII(1, 1)))
