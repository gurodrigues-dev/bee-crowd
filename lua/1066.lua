local par, impar, pos, neg = 0, 0, 0, 0
local n

for i = 1, 5 do
    n = io.read("*n")

    if n % 2 == 0 then
        par = par + 1
    end

    if math.abs(n % 2) == 1 then
        impar = impar + 1
    end

    if n > 0 then
        pos = pos + 1
    end

    if n < 0 then
        neg = neg + 1
    end
end

print(string.format("%d valor(es) par(es)", par))
print(string.format("%d valor(es) impar(es)", impar))
print(string.format("%d valor(es) positivo(s)", pos))
print(string.format("%d valor(es) negativo(s)", neg))
