#!/usr/bin/env python3

# send + more = money
# s e n d m o r y
#  [0 - s] [1 - e] [2 - n] [3 - d] [4 - m] [5 - o] [6 - r] [7 - y]
"""
                            if (len(check) == 8) and  \
                                    (s * 1000 + e * 100 + n * 10 + d 
                                            + m * 1000 + o * 100 + r * 10 + e
                                            == m * 10000 + o * 1000 + n * 100 + e * 10 + y):
"""
m = 1
for y in range(10):
    for r in range(10):
        for o in range(10):
            for d in range(10):
                for n in range(10):
                    for e in range(10):
                        for s in range(1,10):
                            check = {s, e, n, d, m, o, r, y}
                            send = s * 1000 + e * 100 + n * 10 + d 
                            more = m * 1000 + o * 100 + r * 10 + e
                            if (len(check) == 8) and  send + more > 9999:
                                money = m * 10000 + o * 1000 + n * 100 + e * 10 + y
                                if send + more == money:
                                    print("  {0} {1} {2} {3}\n+ {4} {5} {6} {1}\n---------\n{4} {5} {2} {1} {7}".format(s, e, n, d, m, o, r, y))
                                    exit(0)
