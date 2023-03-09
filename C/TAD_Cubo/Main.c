#include <stdio.h>
#include <stdlib.h>
#include "TADCubo.c"

int main(){

    int op, flag;
    Cubo * c;
    int a, nova;

    system("cls");

    do{
        printf("Escolha uma das opcoes abaixos!\n");
        printf("1- Criar\n");
        printf("2- Liberar\n");
        printf("3- Acessar\n");
        printf("4- Alterar aresta\n");
        printf("5- Calcular area lateral\n");
        printf("6- Calcular area total\n");
        printf("7- Calcular volume\n");
        printf("0- Sair\n");
        printf("Opcao: ");
        scanf("%d", &op);
        printf("\n");

        switch (op){
            case 1:{
                printf("Criar cubo!\n");
                printf("Digite o valor da aresta: ");
                scanf("%d", &a);
                c = criar(a);
                if(c==NULL)
                    printf("Sem memoria para criar!\n");
                printf("  Cubo criado!\n\n");
                break;
                }
            
            case 2:{
                printf("Apagar cubo!\n");
                printf("Confirmar exclusao?");
                printf(" 0- Nao, 1- Sim: ");
                scanf("%d", &flag);
                if(flag==1){
                    liberar(c);
                    printf("  Cubo excluido!\n\n");
                }
                else
                    printf("  Exclusao cancelada!\n\n");
                break;
            }

            case 3:{
                printf("Acessar cubo!\n");
                printf("  Aresta: %d\n\n", acessar(c));
                break;
            }

            case 4:{
                printf("Alterar arestas!\n");
                printf("Digite a nova aresta: ");
                scanf("%d", &nova);
                alterar_aresta(c, nova);
                printf("  Aresta alterada para %d!\n\n", acessar(c));
                break;
            }

            case 5:{
                printf("Calcular area lateral!\n");
                printf("  Area lateral: %d\n\n", calcular_area_lado(c));
                break;
            }

            case 6:{
                printf("Calcular area total!\n\n");
                printf("  Area total: %d\n\n", calcular_area_total(c));
                break;
            }

            case 7:{
                printf("Calcular volume!\n");
                printf("  Volume: %d\n\n", calcular_volume(c));
                break;
            }
            
            case 0:{
                printf("Saindo...\n");
                break;
            }
            default:{
                printf("Opcao invalida!\n");
                break;
            }
        }


    }while(op!=0);



}

