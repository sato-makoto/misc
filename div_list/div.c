#include<stdio.h>
#include<stdlib.h>

int main(int argc, char **argv){

  int num = atoi(argv[1]);

  int mylist[4] = {0,0,0,0};
   if(num < 100) {
     mylist[3] = num;
   }else if(num < 10000) {
     mylist[3] = num % 100;
     mylist[2] = num / 100;
   }else if(num < 1000000) {
     mylist[3] = num % 10000 % 100;
     mylist[2] = num % 10000 / 100;
     mylist[1] = num / 10000;
   }else if(num < 1000000) {
   }else {
     mylist[3] = num % 1000000 % 10000 % 100;
     mylist[2] = num % 1000000 % 10000 / 100;
     mylist[1] = num % 1000000 / 10000 ;
     mylist[0] = num / 1000000;
     }
  for(int i=0; i<4; i++) {
    printf("%d,", mylist[i]);
  }
  printf("\n");
  return 0;
}
