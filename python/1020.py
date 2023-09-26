idade_em_dias = int(input())

anos = idade_em_dias // 365
idade_em_dias %= 365
meses = idade_em_dias // 30
dias = idade_em_dias % 30

print(f"{anos} ano(s)\n{meses} mes(es)\n{dias} dia(s)")