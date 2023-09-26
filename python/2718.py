def lampadas_trocadas(decimal):
    binario = bin(decimal)[2:]
    contagem = 0
    max_contagem = 0

    for bit in binario:
        if bit == '1':
            contagem += 1
            max_contagem = max(max_contagem, contagem)
        else:
            contagem = 0

    return max_contagem

list = []

n = int(input())

for _ in range(n):
    decimal = int(input())
    resultado = lampadas_trocadas(decimal)
    list.append(resultado)

for resultado in list:
    print(resultado)