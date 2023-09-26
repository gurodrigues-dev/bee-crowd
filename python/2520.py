def calcular_distancia(matriz, x1, y1, x2, y2):
    return abs(x1 - x2) + abs(y1 - y2)

while True:
    try:
        linhas_colunas = [int(i) for i in input().split()]

        matriz = []

        for i in range(linhas_colunas[0]):
            valores = input().split()
            matriz.append(valores)

        matriz = [[int(item) for item in linha] for linha in matriz]

        posicao_1 = None
        posicao_2 = None

        for i in range(linhas_colunas[0]):
            for j in range(linhas_colunas[1]):
                if matriz[i][j] == 1:
                    posicao_1 = (i, j)
                elif matriz[i][j] == 2:
                    posicao_2 = (i, j)

        if posicao_1 is not None and posicao_2 is not None:
            x1, y1 = posicao_1
            x2, y2 = posicao_2
            distancia = calcular_distancia(matriz, x1, y1, x2, y2)
            print(distancia)

    except EOFError:
        break