#include <stdio.h>

int main ()
{

  float n, x[100];
  int i;

  for (i = 0; i < 100; i++)
  {
    scanf("%f", &n);
    x[i] = n;

  }

  for (i = 0; i < 100; i++)
  {

    if (x[i] <= 10)
    {

      printf("A[%d] = %.1f\n", i, x[i]);

    }
  }
}