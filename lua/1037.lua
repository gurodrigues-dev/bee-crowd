local n = io.read("*n")

if n >= 0 and n <= 25 then
    print("Intervalo [0,25]")
elseif n > 25 and n <= 50 then
    print("Intervalo (25,50]")
elseif n > 50 and n <= 75 then
    print("Intervalo (50,75]")
elseif n > 75 and n <= 100 then
    print("Intervalo (75,100]")
else
    print("Fora de intervalo")
end
