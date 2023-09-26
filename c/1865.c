#include <stdio.h>
#include <string.h>

int main() {

  unsigned int casos, forca;
  char nome[40];
  scanf("%d",&casos);

  do {

    scanf(" %s %d", nome, &forca);

    if(strcmp(nome,"Thor"))
    	printf("N\n");
    else
    	printf("Y\n");

    casos--;
  } while(casos>0);

  return 0;
}