#!/usr/bin/env python3

"""
Wikipedia 「覆面算」より

みず * みず = 飲みみず
"""

"""
み: a
ず: b
飲: c
"""

for a in range(1,10):
    for b in range(10):
        for c in range(1,10):
            p1 = a*10 + b
            ans = c*1000 + a*100 + p1
            if p1 * p1  == ans:
                print("みず * みず = 飲みみず")
                print(p1, "*" ,p1,"=", ans)
