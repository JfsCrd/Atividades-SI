//Calculo de Fatorial Recursivo
#include <stdio.h>
#include <stdlib.h>

double calculaFatorial(int x){

	double fat;
	
	if ( x <= 1 )
		return 1;
	
    else{
		fat = x * calculaFatorial(x-1);
		return (fat);
	}
}

int main(void){
	
	int n;
    double fatorial;

	printf("Digite N a ser calculado: ");
	scanf("%d", &n);
	
	fatorial = calculaFatorial(n);
	
	printf("Fatorial de %d = %.01f\n", n, fatorial);
	
}
