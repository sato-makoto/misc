#include<stdio.h>
#include<stdlib.h>

#define HUND 100
#define HUND2 10000
#define HUND3 1000000

void mklist();

void mklist(int num) {
  int mylist[4] = {0,0,0,0};
  if(num < HUND) {
     mylist[3] = num; 
  }else if(num < HUND2) {
     mylist[2] = num / HUND;
     mylist[3] = num % HUND;
  }else if(num < HUND3) {
     mylist[1] = num / HUND2;
     mylist[2] = num % HUND2 / HUND;
     mylist[3] = num % HUND2 % HUND;
  }else {
  mylist[0] = num / HUND3;
  mylist[1] = num % HUND3 / HUND2 ;
  mylist[2] = num % HUND3 % HUND2 / HUND;
  mylist[3] = num % HUND3 % HUND2 % HUND;
  }
  for(int i=0; i<4; i++) {
    printf("%d,", mylist[i]);
  }
  printf("\n");
}

int main(int argc, char **argv){
  int num = atoi(argv[1]);
  if(num > 99999999) {
    printf("Too big!\n");
    exit(1);
  }
  mklist(num);
  return 0; 
}
