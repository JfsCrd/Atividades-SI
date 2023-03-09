#include <stdio.h>
#include <string.h>
#include "FB_ingenuo.c"


int main (){
    char txt[] = "hsabdfkasndafeahweijabiufhsjfnafeahweihfkjnasbkjdfasdhkjasdfnkjsadbfkashdfkjbsdkhfgawuehsdhflkjsheiruhaiusef";
    char padrao[] = "feahwei";

    FB(txt,padrao);

    return 0;
}
