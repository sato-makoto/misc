#!/usr/bin/env python3

"""
   　ピヨ
 ＋　ピヨ
----------
   ヒヨコ

x + x = y

ヒピヨコ

a = ヒ b = ピ c = ヨ d = コ
"""
for a in range(1,10):
    for b in range(1,10):
        for c in range(10):
            for d in range(10):
                x = b*10 + c
                y = a*100 + c*10 + d 
                if x * 2 == y \
                        and len({a, b, c, d}) == 4:
                    print('{0} + {0} = {1}'.format(x, y))


