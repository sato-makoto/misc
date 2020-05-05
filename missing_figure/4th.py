#!/usr/bin/env python3

# 虫食い算大会
# https://www.aozora.gr.jp/cards/000160/files/43533_16824.html

"""
97_ * 8 = ___0
97_ * _ = 9__

97_ * _8 = 175_0

        970 + a 
x       b*10 + 8
-----------------------
(970 + a) * 8 % 10 == 0
(970 + a) * b // 1000 == 9
----------------
=  c * 10 + 17500 
"""

for a in range(10):
    for b in range(10):
        for c in range(10):
            ans1 = 970+a
            ans2 =  b * 10 + 8
            ans3 = (c*10) + 17500
            ans_1 = ans1 * 8
            ans_2 = b * 10 * ans1
            if ans1 * ans2  == ans3 and ans_1 % 10 ==0 and ans_2 // 1000 == 9:
                print("   {}".format(ans1))
                print("x   {}".format(ans2))
                print("-------")
                print("  {}".format(ans_1))
                print("  {}".format(ans_2//10))
                print("-------")
                print(" {}".format(ans3))


