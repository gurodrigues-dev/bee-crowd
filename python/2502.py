def criar_mapeamento(cifra1, cifra2):
    mapeamento = {}
    for char1, char2 in zip(cifra1, cifra2):
        mapeamento[char2] = char1
    return mapeamento

def decifrar_linha(mapeamento, linha):
    decifrada = []
    for char in linha:
        if char in mapeamento:
            decifrada.append(mapeamento[char])
        else:
            decifrada.append(char)
    return ''.join(decifrada)

while True:
    try:
        C, N = map(int, input().split())

        cifra1 = input()
        cifra2 = input()

        mapeamento = criar_mapeamento(cifra1, cifra2)

        for _ in range(N):
            linha = input()
            decifrada = decifrar_linha(mapeamento, linha)
            print(decifrada)

        print()

    except EOFError:
        break