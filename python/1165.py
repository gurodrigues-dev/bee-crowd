casos_de_teste = int(input())

for teste in range(casos_de_teste):
    n = int(input())

    eh_primo = True
    for i in range(2, n):
        if n % i == 0:
            eh_primo = False
            break

    if eh_primo:
        print("{} eh primo".format(n))
    else:
        print("{} nao eh primo".format(n))