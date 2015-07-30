#include<stdio.h>
int main()
{
  int a, b;
  int *ap, *bp, *aap;
  a = 3;
  b = 3;
  ap = &a;
  aap = &a;
  bp = &b;

 if (ap == bp)
   printf("ap == bp\n");
 else
   printf("ap != bp\n");
 if (*ap == *bp)
   printf("*ap == *bp\n");
 else
   printf("*ap != *bp\n");
 if (ap == aap)
   printf("ap == aap\n");
 else
   printf("ap != ap\n");

  printf("*ap is %d\n", *ap);
  *ap = *ap * *bp;
  printf("%d is plus one.\n", *ap);

  return 0;
}
