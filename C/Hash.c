#include <stdio.h>
#include <stdlib.h>

void hashing (int x, int v[]);

int main (){

    int hash[20];
    int x, i, tam;

    for(i=0;i<20;i++)
        hash[i]=0;

    i=0;

    for(i=0;i<10;i++){
        printf("Digite a entrada: ");
        scanf("%d", &x);
        hashing(x, hash);
    }
    
    tam = sizeof(hash);

    for(i=0;i<20;i++){
        printf("[%d]%d  ", i, hash[i]);
    }
    printf("\n");
}

void hashing (int x, int *h){

    int posicao;

    posicao = x%20;

    if(h[posicao]!=0){
        printf("Colisao! Inserindo na proxima posicao disponivel...\n");
        while(h[posicao]!=0)
            posicao++;
        h[posicao] = x;
    }

    else{
        printf("Posicao livre! Inserindo...\n");
        h[posicao] = x; 
    }

    printf("%d inserido na posicao %d\n\n", x, posicao);
}