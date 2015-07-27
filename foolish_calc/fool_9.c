#include <stdio.h>

int same_or_not(int a, int b)
{
  if (a == b)
    return 1;
  else
    return 0; 
}

int all_not_same(int comp[8])
{
   int i1, i2, l1 = 9,  wrong = 0;
   for(i1 = 0; i1 < l1; i1++) {
     for(i2 = i1 + 1; i2 < l1 ; i2++) {
       if(i1 == i2)
         break;
       else
         wrong += same_or_not(comp[i1], comp[i2]);
     }
   }
   if (wrong == 0)
     return 1;
   else
     return 0;
}

int mod_zero(int a, int b)
{
  if (a % b == 0)
    return 1;
  else
    return 0;
}

int main(void)
{
  int j, k, l, m, n, o, p, q, r;
  for(j = 1; j < 10; j++) {
   for(k = 1; k < 10; k++) {
    for(l = 1; l < 10; l++) {
     for(m = 1; m < 10; m++) {
      for(n = 1; n < 10; n++) {
       for(o = 1; o < 10; o++) {
        for(p = 1; p < 10; p++) {
         for(q = 1; q < 10; q++) {
          for(r = 1; r < 10; r++) {
            int alllist[] = {j, k, l, m, n, o, p, q, r};
  if ((all_not_same(alllist)) && \
    (j + 13 * k / l + m + 12 * n - o - 11 + p * q / r - 10 == 66) && \
    mod_zero(13 * k, l) && mod_zero(p * q, r))
     printf("%d %d %d %d %d %d %d %d %d\n", \
        j, k, l, m, n, o, p, q, r);
  } } } } } } } } }
  return 0;
}
