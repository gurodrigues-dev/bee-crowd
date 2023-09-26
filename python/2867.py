def numero_de_digitos_em_potencia(n, m):
    resultado = pow(n, m)
    numero_de_digitos = len(str(resultado))
    return numero_de_digitos

C = int(input())

lista = []

for _ in range(C):
    N, M = map(int, input().split())
    resultado = numero_de_digitos_em_potencia(N, M)
    lista.append(resultado)

for _ in lista:
    print(_)