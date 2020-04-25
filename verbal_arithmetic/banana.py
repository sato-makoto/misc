#!/usr/bin/env python3

# From Wikip 覆面算
# バナナ + バナナ = シナモン
# バ ナ シ モ ン
# [バ - a - 0] [ナ - b - 1][シ - c - 2][モ - d - 3][ン - e - 4]

for a in range(1,10):
    for b in range(10):
        for c in range(1,10):
            for d in range(10):
                for e in range(10):
                    check = {a, b, c, d, e}
                    if len(check) == 5 and  \
                            (a * 100 + b * 10 + b) * 2 \
                            == c * 1000 + b * 100 + d * 10 + e:
                                    print("  {0} {1} {1}\n+ {0} {1} {1} \
                                    \n-------\n{2} {1} {3} {4}" \
                                    .format(a, b, c, d, e))
