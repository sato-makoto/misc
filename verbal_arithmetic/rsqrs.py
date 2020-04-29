#!/usr/bin/env python3

"""
        R S
      Q R S
    P Q R S
  O P Q R S
+ O P Q R S
-----------
N O P Q R S
"""

# N O P Q R S

for n in range(1,10):
    for o in range(1,10):
        for p in range(1,10):
            for q in range(1,10):
                for r in range(1,10):
                    for s in range(10):
                        check = {n, o, p, q, r, s}
                        if len(check) == 6:
                            first = r * 10 + s
                            second = q * 100 + first
                            third = p * 1000 + second
                            fourth = o * 10000 + third
                            answer = n * 100000 + fourth
                            if first + second + third + fourth * 2 == answer:
                                print("     {0}\n    {1}\n   {2}\n  {3}\n+ {3}\n{5}\n {4}\n".format(first, second, third, fourth, answer, '-------'))
