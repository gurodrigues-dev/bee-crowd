peca1 = input().split()
valor_peca_1 = (float(peca1[1]) * float(peca1[2]))

peca2 = input().split()
valor_peca_2 = (float(peca2[1]) * float(peca2[2]))

preco_final = valor_peca_1 + valor_peca_2

print(f"VALOR A PAGAR: R$ {preco_final:.2f}")
