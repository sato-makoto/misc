#!/usr/bin/env python3

# too large to run.
# it can use one processor

"""
******** / *** = *7*** mod 0

a / b = *7***

"""

for a in range(100,1000):
  for b in range(10000000,1000000000):
    for c in range(10000,100000):
       if c // 1000 % 10 == 7 and c == a / b:
          print(a, " / ", b, " = ", c)
