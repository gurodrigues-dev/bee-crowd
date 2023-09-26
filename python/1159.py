while True:
    x = int(input())

    if x == 0:
        break

    if x % 2 != 0:
        x += 1

    soma = 0
    for i in range(0, 5):
        soma += x
        x += 2

    print(soma)