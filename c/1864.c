#include <stdio.h>
#include <string.h>

int main ()
{

  char frase[] = "LIFE IS NOT A PROBLEM TO BE SOLVED";
  unsigned short int n;

  scanf("%hd", &n);

  for (unsigned short i = 0; i < n; i++)
  {

    printf("%c", frase[i]);

  }
  printf("\n");
}