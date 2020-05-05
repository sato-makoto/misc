#!/usr/bin/env python3

# 虫食い算大会 
# https://www.aozora.gr.jp/cards/000160/files/43533_16824.html

"""
  1 * 9 2
  2 9 * 1
  9 7 1 *
+ 2 * 1 7
---------
1 7 5 9 2
"""

bear_answer = 1092+2901+9710+2017
for a in range(10):
    for b in range(10):
        for c in range(10):
            for d in range(10):
                first = a * 100 + 1092
                second = b * 10 + 2901
                third = c + 9710
                fourth = d * 100 + 2017
                if first + second + third + fourth == 17592:
                    print("  {0}\n  {1}\n  {2}\n+ {3}\n-------\n 17592".format(first,second,third,fourth))
