local function seqS(n)
    if n == 1 then
        return n
    end

    return 1/n + seqS(n - 1)
end

print(string.format("%.2f", seqS(100)))
