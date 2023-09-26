n = int(input())

agrupados_dois_a_dois = (n * (n - 1)) / 2
agrupados_quatro_a_quatro = (n * (n - 1) * (n - 2) * (n - 3)) / (4 * 3 * 2)

resultado = 1 + agrupados_dois_a_dois + agrupados_quatro_a_quatro

print(int(resultado))

