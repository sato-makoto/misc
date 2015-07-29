#include<stdio.h>
int swap(int *, int *);

int swap(int *x, int *y)
{
  int temp;
  temp = *x;
  *x = *y;
  *y = temp;
  
  return 0;
}

int main(void)
{
  int a = 5,  b = 10;
  int *ap, *bp;
  ap = &a;
  bp = &b;
  printf("a is %d, b is %d\n", a, b);
  printf("ap is %d, bp is %d\n", *ap, *bp);

  swap(ap, bp);
  printf("\nSwap two pointers.\n\n");

  printf("ap is %d, bp is %d\n", *ap, *bp);
  printf("a is %d, b is %d\n", a, b);

  return 0;
}
