local comb = {0, 0, 0}

while true do
    local c = io.read("*n")

    if c >= 1 and c <= 4 then
      if c == 4 then
        break
      end
      comb[c] = comb[c] + 1
    end
end

print("MUITO OBRIGADO")
print(string.format("Alcool: %d", comb[1]))
print(string.format("Gasolina: %d", comb[2]))
print(string.format("Diesel: %d", comb[3]))
