valores = input().split()

valores = [float(i) for i in valores]

delta = valores[1]**2 - 4 * valores[0] * valores[2]

if delta < 0 or valores[0] == 0:
    print("Impossivel calcular")
else:
    R1 = (-valores[1] + delta**0.5) / (2 * valores[0])
    R2 = (-valores[1] - delta**0.5) / (2 * valores[0])

    print(f'R1 = {R1:.5f}')
    print(f'R2 = {R2:.5f}')