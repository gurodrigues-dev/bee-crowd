function notas(v, n)
    print("NOTAS:")
    for _, i in ipairs(n) do
        print(string.format("%d nota(s) de R$ %.2f", math.floor(v / i), i))
        v = round(v % i, 2)
    end
    return v
end

function moedas(v, m)
    print("MOEDAS:")
    for _, i in ipairs(m) do
        print(string.format("%d moeda(s) de R$ %.2f", math.floor(v / i), i))
        v = round(v % i, 2)
    end
end

function round(num, numCasasDecimais)
    local mult = 10^(numCasasDecimais or 0)
    return math.floor(num * mult + 0.5) / mult
end

n = {100.00, 50.00, 20.00, 10.00, 5.00, 2.00} 
m = {1.00, 0.50, 0.25, 0.10, 0.05, 0.01}

local v = tonumber(io.read())

v = notas(v, n)
moedas(v, m)
