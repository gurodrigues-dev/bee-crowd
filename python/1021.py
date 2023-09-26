valor = float(input())

centavos = int(valor * 100)

notas_moedas = [10000, 5000, 2000, 1000, 500, 200, 100, 50, 25, 10, 5, 1]

quantidades = []

for nota_moeda in notas_moedas:
    quantidade = centavos // nota_moeda
    centavos %= nota_moeda
    quantidades.append(quantidade)

print("NOTAS:")
print(f"{quantidades[0]} nota(s) de R$ 100.00")
print(f"{quantidades[1]} nota(s) de R$ 50.00")
print(f"{quantidades[2]} nota(s) de R$ 20.00")
print(f"{quantidades[3]} nota(s) de R$ 10.00")
print(f"{quantidades[4]} nota(s) de R$ 5.00")
print(f"{quantidades[5]} nota(s) de R$ 2.00")
print("MOEDAS:")
print(f"{quantidades[6]} moeda(s) de R$ 1.00")
print(f"{quantidades[7]} moeda(s) de R$ 0.50")
print(f"{quantidades[8]} moeda(s) de R$ 0.25")
print(f"{quantidades[9]} moeda(s) de R$ 0.10")
print(f"{quantidades[10]} moeda(s) de R$ 0.05")
print(f"{quantidades[11]} moeda(s) de R$ 0.01")