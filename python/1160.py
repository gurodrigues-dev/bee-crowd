def anos_para_ultrapassar(pa, pb, g1, g2):
    anos = 0
    while pa <= pb:
        pa += int(pa * g1 / 100)
        pb += int(pb * g2 / 100)
        anos += 1
        if anos > 100:
            return "Mais de 1 seculo."
    return f"{anos} anos."

t = int(input())

list = []

for _ in range(t):
    pa, pb, g1, g2 = map(float, input().split())
    resultado = anos_para_ultrapassar(int(pa), int(pb), g1, g2)
    list.append(resultado)

for response in list:
    print(response)