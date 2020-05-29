#!/usr/bin/env python3

# too large to run.
# it can use one processor

"""
******** / *** = *7*** mod 0

a / b = *7***

"""
for c in range(10000,100000):
  if c // 1000 % 10 == 7:
    for a in range(10000000,1000000000):
      if a % c == 0:
        for b in range(100,1000):
          if c == a / b and a == b * c and a // 100000 < b:
            print(a, " / ", b, " = ", c)
#            exit(0)


