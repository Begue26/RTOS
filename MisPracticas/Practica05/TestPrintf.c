/*
  TestPrintf.c - driver para usar la funcion
  void printf(int, char*, ...)
 */

extern void printf(int fd,char *fmt,...);
extern void salir(int status);

int main(){
  char A[]="¿Qué onda?";
  printf(1,A);
  char B[]="\n";
  char C[]="Sistemas Operativos en Tiempo Real: %s";
  char D[]="Grupo 3MV8 2018-2";
  char E[]="Esta es una prueba de la función printf";
  printf(1,B);
  printf(1,"Miercoles %d de junio de %d",13,2018);
  printf(1,E);
  printf(1,B);
  printf(1,C,D);
  printf(1,B);
  salir(0xff);
}
