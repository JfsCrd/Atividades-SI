//Calculo de Fibonacci Recursivo | Button-up
#include <stdio.h>
#include <stdlib.h>

int fib(int n){

    if (n == 1)
        return 1;
  
    else if (n == 2)
        return 1;
    
    else 
        return fib(n - 1) + fib(n - 2);
}

int main(void){
  
    int n;
  
    printf("Digite a posicao fibonacci: ");
    scanf("%d", &n);
  
    printf("Fibonacci: %d\n", fib(n));

}
