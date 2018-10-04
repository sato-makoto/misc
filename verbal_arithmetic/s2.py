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

#  same numbers
def not_eq(s, e, n, d, m, o, r, y):
  if len({s, e, n, d, m, o, r, y}) == 8:
      return True
  else:
      return False

# **N* + **** = **N**
def n_eq(a, c):
    x = str(a)[2]
    z = str(c)[2]
    if x == z:
      return True
    else:
      return False

# *E** + ***E = ***E*
def e_eq(a, b, c):
    x = str(a)[1]
    y = str(b)[3]
    z = str(c)[3]
    if x == y == z:
      return True
    else:
      return False
      
# **** + *O** = *O***
def o_eq(b, c):
    y = str(b)[1]
    z = str(c)[1]
    if y == z:
        return True
    else:
        return False

# **** + M*** = M****
def m_eq(b, c):
    y = str(b)[0]
    z = str(c)[0]
    if y == z:
        return True
    else:
        return False

for b in range(1000,10000):
  for a in range(1000,10000):
    c = a + b
    if c > 9999:
       s, e, n, d = str(a)
       m = str(b)[0]
       o = str(b)[1]
       r = str(b)[2]
       y = str(c)[4]
       if  not_eq(s, e, n, d, m, o, r, y) \
               and e_eq(a, b, c) \
               and n_eq(a, c) \
               and o_eq(b, c) \
               and m_eq(b, c):
                   print('{} + {} = {}'.format(a, b, c))
                   exit(0)
