#include<stdio.h>
#include<string.h>

/*
int add(int list[]);

int add(int list[])
{
  return 0;
}
*/

int main()
{
  int mylist[10];
 
  mylist[0] = 4;
  mylist[3] = (int) NULL;
  mylist[9] = 5;
  mylist[11] = 5;


  printf("\n");
  for(int x = 0; x < 15; x++) 
  {
     printf("%d: %d\n", x, mylist[x]);
  }
  return 0;
}
