#include <stdio.h>
#include <string.h>
#include "FB_ingenuo.h"

int FB(char txt[], char p[]){

    int i, j, cont=0;

    int P = strlen(p); // tamanho do padrao
    int T = strlen(txt); //tamanho texto de entrada

    for (i = 0; i <= T - P; i++){ //todas as ocorrencia
        for (j = 0; j < P ; j++){
            if (txt[i + j] != p[j])
                break;
        }
        
        if (j == P){
            printf("Padrao encontrado na posicao: %d \n", i);
            printf("Comparacoes: %d\n", cont);
        }
       cont++;
    }
    return 0;
}
