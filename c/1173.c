#include <stdio.h>

int main ()
{

  int n[10], i, x, k;

  scanf("%d", &x);

  for (k = 0, i = x; k < 10; i *= 2, k++)
  {

    n[k] = i;

  }

  for (i = 0; i < 10; i++)
  {

    printf("N[%d] = %d\n", i, n[i]);

  }
}