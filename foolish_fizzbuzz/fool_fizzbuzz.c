#include<stdio.h>
int main()
{
  int i;  
  #define LIMIT 100000000
  for(i=0; i<LIMIT; i+=15) {
    printf("%d\n", i+1);
    printf("%d\n", i+2);
    printf("fizz\n");
    printf("%d\n", i+4);
    printf("buzz\n");
    printf("fizz\n");
    printf("%d\n", i+7);
    printf("%d\n", i+8);
    printf("fizz\n");
    printf("buzz\n");
    if(i+15 > LIMIT) {
     break;  
    }
    printf("%d\n", i+11);
    printf("fizz\n");
    printf("%d\n", i+13);
    printf("%d\n", i+14);
    printf("fizzbuzz\n");
  }
  return 0;
}
