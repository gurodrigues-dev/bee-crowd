#include <stdio.h>

int main ()
{

  int x, z, i, cont = 1, soma = 0;
  scanf("%d", &x);

  do{

    scanf("%d", &z);

  } while (z <= x);

soma = x;

do{

  ++x;
  soma += x;
  cont++;

} while (soma <= z);

  printf("%d\n", cont);

}