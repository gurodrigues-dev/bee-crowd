valor = int(input())

notas = [100, 50, 20, 10, 5, 2, 1]

print(valor)

for nota in notas:
    quantidade = valor // nota  
    print(f"{quantidade} nota(s) de R$ {nota},00")
    valor %= nota  