#include <stdio.h>

void matrix(unsigned short);

int main ()
{

  unsigned short tamanho;

  while (scanf("%hd", &tamanho) != EOF)
  {

    matrix(tamanho);

  }
}

void matrix(unsigned short tamanho)
{

  int m[tamanho][tamanho];
  unsigned short linha, coluna;

  for (linha = 0; linha < tamanho; linha++)
    for (coluna = 0; coluna < tamanho; coluna++)
    {

      if (linha == coluna)
        m[linha][coluna] = 2;
      else if (linha == tamanho - coluna - 1)
        m[linha][coluna] = 3;
      else
        m[linha][coluna] = 0;

    }

  unsigned short inicio = tamanho/3;
  unsigned short fim = tamanho - inicio;

  for (linha = inicio; linha < fim; linha++)
    for (coluna = inicio; coluna < fim; coluna++)
      m[linha][coluna] = 1;

  m[tamanho/2][tamanho/2] = 4;

  for (linha = 0; linha < tamanho; linha++)
  {

    for (coluna = 0; coluna < tamanho; coluna++)
      printf("%d", m[linha][coluna]);

    printf("\n");
  }
  printf("\n");
}