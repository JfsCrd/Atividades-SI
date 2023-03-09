struct cubo{
    int a;
};
typedef struct cubo Cubo;

Cubo * criar (int a);
void liberar (Cubo* c);
int acessar (Cubo* c);
void alterar_aresta (Cubo* c, int x);
int calcular_area_lado (Cubo* c);
int calcular_area_total(Cubo* c);
int calcular_volume(Cubo* c);

