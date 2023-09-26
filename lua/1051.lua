local s = io.read("*n")

local imposto = 0

if s > 2000 then
    local v = s - 2000
    if v > 1000 then
        v = 1000
    end

    imposto = imposto + v * 0.08
end

if s > 3000 then
    local v = s - 3000
    if v > 1500 then
        v = 1500
    end

    imposto = imposto + v * 0.18
end

if s > 4500 then
    local v = s - 4500
    imposto = imposto + v * 0.28
end

if imposto == 0 then
    print("Isento")
else
    print(string.format("R$ %.2f", imposto))
end
