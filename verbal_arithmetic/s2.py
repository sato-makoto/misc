#!/usr/bin/env python3
"""
  SEND 
+ MORE
-------
 MONEY

 *E**   **N*
 ***E   ****
***E*  **N**

 ****   ****
 *O**   M***
*O***  M****

S E N D M O R Y
"""

def not_eq(s, e, n, d, m, o, r, y):
  if len({s, e, n, d, m, o, r, y}) == 8:
      return True
  else:
      return False

"""
def n_eq(a, c):
    x = a % 1000 % 100 // 10
    z = c % 10000 % 1000 // 100
    if x == z:
      return True
    else:
      return False

def e_eq(a, b, c):
    x = a %
    if x == y == z:
      return True
    else:
      return False
"""
      

for a in range(1000,10000):
  for b in range(1000,10000):
    c = a + b
    s = a // 1000
    e = a % 1000 // 100
    n = a % 1000 % 100 // 10
    d = a % 1000 % 100 % 10
    m = b // 1000
    o = b % 1000 // 100
    r = b % 1000 % 100 // 10
    y = c % 10000 % 1000 % 100 % 10
    if c > 9999 and c < 20000 \
       and not_eq(s, e, n, d, m, o, r, y):
      print('{} + {} = {}'.format(a, b, c))
