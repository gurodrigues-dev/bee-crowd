local grenais, golInt, golGre, inter, gremio, emp, choose = 0, 0, 0, 0, 0, 0, 0
local winner = ""

while true do
    local golInt = io.read("*n")
    local golGre = io.read("*n")

    if golInt > golGre then
        inter = inter + 1
    elseif golGre > golInt then
        gremio = gremio + 1
    else
        emp = emp + 1
    end

    grenais = grenais + 1

    print("Novo grenal (1-sim 2-nao)")
    local choose = io.read("*n")

    if choose == 2 then
        break
    end
end

print(string.format("%d grenais", grenais))
print(string.format("Inter:%d", inter))
print(string.format("Gremio:%d", gremio))
print(string.format("Empates:%d", emp))

if inter == gremio then
    print("Nao houve vencedor")
else
    winner = "Inter"
    if gremio > inter then
        winner = "Gremio"
    end

    print(string.format("%s venceu mais", winner))
end
