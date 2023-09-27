from typing import List

Valor = int

class No:
    def valor(self) -> Valor:
        pass
    
    def esquerda(self) -> 'No':
        pass
    
    def direita(self) -> 'No':
        pass
    
    def inserir(self, v: Valor) -> 'No':
        pass
    
    def infixa(self) -> List[Valor]:
        pass
    
    def prefixa(self) -> List[Valor]:
        pass
    
    def posfixa(self) -> List[Valor]:
        pass

def max(a: int, b: int) -> int:
    return a if a >= b else b

class Arvore:
    def __init__(self, valor: Valor, esquerda: No, direita: No):
        self.valor = valor
        self.esquerda = esquerda
        self.direita = direita
    
    def inserir(self, v: Valor) -> 'No':
        if v < self.valor:
            return Arvore(self.valor, self.esquerda.inserir(v), self.direita)
        else:
            return Arvore(self.valor, self.esquerda, self.direita.inserir(v))
    
    def infixa(self) -> List[Valor]:
        return self.esquerda.infixa() + [self.valor] + self.direita.infixa()
    
    def prefixa(self) -> List[Valor]:
        return [self.valor] + self.esquerda.prefixa() + self.direita.prefixa()
    
    def posfixa(self) -> List[Valor]:
        return self.esquerda.posfixa() + self.direita.posfixa() + [self.valor]

class Folha:
    def __init__(self):
        self.valor = 0
        self.esquerda = None
        self.direita = None
    
    def inserir(self, v: Valor) -> 'No':
        return Arvore(v, Folha(), Folha())
    
    def infixa(self) -> List[Valor]:
        return []
    
    def prefixa(self) -> List[Valor]:
        return []
    
    def posfixa(self) -> List[Valor]:
        return []

folha = Folha()
c = int(input())
for i in range(1, c + 1):
    input()
    numeros = list(map(int, input().split()))
    arvore = folha
    for num in numeros:
        arvore = arvore.inserir(num)
    print(f"Case {i}:")
    print(f"Pre.: {' '.join(map(str, arvore.prefixa()))}")
    print(f"In..: {' '.join(map(str, arvore.infixa()))}")
    print(f"Post: {' '.join(map(str, arvore.posfixa()))}")
    print()