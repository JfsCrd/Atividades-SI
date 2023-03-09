/*
1.criar: aloca espaço de memória para um cubo;
2.liberar: operação que libera a memória alocada por um cubo;
3.acessar: operação que acessa a memória alocada por um cubo;
4.alterar_aresta: operação que atribui um novo valor às arestas;
5.calcular_area_lado: operação que calcula a área de uma das faces do cubo.
6.calcular_area_total: operação que calcula a área total do cubo.
7.calcular_volume: operação que calcula o volume do cubo.
*/

#include <stdio.h>
#include <stdlib.h>
#include "TADCubo.h"


Cubo * criar (int a){
   Cubo* c = (Cubo*) malloc(sizeof(Cubo));
    if(c!=NULL){
        c->a = a;
    }
    return c;
}

void liberar (Cubo* c){
    free(c);
}

int acessar (Cubo* c){ 
    return c->a;
}

void alterar_aresta (Cubo* c, int x){
    c->a = x;
}

int calcular_area_lado (Cubo* c){
    return 4 * (c->a * c->a);
}

int calcular_area_total(Cubo* c){
    return 6 * (c->a * c->a);
}

int calcular_volume(Cubo* c){
    return pow(c->a, 3);
}

