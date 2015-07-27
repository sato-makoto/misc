#include <stdio.h>

int all_not_same( \
     int a , int b , int c , \
     int d , int e , int f , \
     int g , int h , int i  )
{
  if ((a == b) || (a == c) || (a == d) || (a == e) || \
      (a == f) || (a == g) || (a == h) || (a == i) || \
\
      (b == c) || (b == d) || (b == e) || (b == f) || \
      (b == g) || (b == h) || (b == i) || \
\
      (c == d) || (c == e) || (c == f) || \
      (c == g) || (c == h) || (c == i) || \
\
      (d == e) || (d == f) || \
      (d == g) || (d == h) || (d == i) || \
\
      (e == f) || (e == g) || (e == h) || (e == i) || \
\
      (f == g) || (f == h) || (f == i) || \
\
      (g == h) || (g == i) || \
\
      (h == i))
      return 0;
  else
      return 1;
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
  if ((all_not_same(j, k, l, m, n, o, p, q, r)) && \
    (j + 13 * k / l + m + 12 * n - o - 11 + p * q / r - 10 == 66) && \
    mod_zero(13 * k, l) && mod_zero(p * q, r))
     printf("%d %d %d %d %d %d %d %d %d\n", \
        j, k, l, m, n, o, p, q, r);
  } } } } } } } } }
  return 0;
}
