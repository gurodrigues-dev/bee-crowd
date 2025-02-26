#include <stdio.h>
#include <stdbool.h>

bool verificaNum(short vet[]);

void main ()
{

	unsigned short casos, i, j, contador;

	scanf("%hu", &casos);

	while (casos--)
	{
		short dado[6];
		short cmp[] = { 1, 2, 3, 4, 5, 6 };

		for (i = 0; i < 6; i++)
			scanf("%hu", &dado[i]);

		if (verificaNum(dado) && (dado[0] + dado[5] == 7) && (dado[1] + dado[3] == 7) && (dado[2] + dado[4] == 7))
			printf("SIM\n");
		else
			printf("NAO\n");


	}
}

bool verificaNum(short vet[])
{

	unsigned short j, i;
	unsigned short contador;
	short cmp[] = { 1, 2, 3, 4, 5, 6 };

	for (i = 0; i < 6; i++)
	{

		contador = 0;

		for (j = 0; j < 6; j++)
		{

			if (cmp[i] == vet[j])
				contador++;

			if (contador > 1)
				return false;
		}

		if (contador == 0)
			return false;
	}

	return true;

}
