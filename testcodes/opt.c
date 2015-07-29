#include<stdio.h>
#include<string.h>
/* 
count the number of options
*/

int main(int argc, char *argv[])
{
  int exit_code = 0;
  if(argc < 2) {
    printf("There is no option.\n");
    exit_code = 1 ;
  }
  else {
  int foo = strlen(argv[1]);
  int bar = printf("%d is number of argv[1] \n", foo);
  printf("%d is returned.\n", bar);
  printf("%d options\n", argc);
  }
  return exit_code;
}

