local n1 = io.read("*n")
local n2 = io.read("*n")
local n3 = io.read("*n")
local n4 = io.read("*n")

local m = (n1*2 + n2*3 + n3*4 + n4*1) / 10
print(string.format("Media: %.1f", m))

if m >= 7 then
    print("Aluno aprovado.")
elseif m < 5 then
    print("Aluno reprovado.")
else
    print("Aluno em exame.")
    n1 = io.read("*n")
    print(string.format("Nota do exame: %.1f", n1))
    m = (m + n1) / 2
    if m >= 5 then
        print("Aluno aprovado.")
    else
        print("Aluno reprovado.")
    end
    print(string.format("Media final: %.1f", m))
end
