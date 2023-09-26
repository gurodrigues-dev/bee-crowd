import math

while True:
    entrada = input()

    if entrada == '0':
        break

    a, b, c = entrada.split()

    metros = (int(a) * int(b) * 100) / int(c)

    lado_terreno = int(math.sqrt(metros))

    print(lado_terreno)