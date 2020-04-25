#!/usr/bin/env python3

# send + more = money
# s e n d m o r y

for y in range(10):
    for r in range(10):
        for o in range(10):
            for m in range(1,10):
                for d in range(10):
                    for n in range(10):
                        for e in range(10):
                            for s in range(1,10):
                                check = {s, e, n, d, m, o, r, y}
                                if (len(check) == 8) and  \
                                (s * 1000 + e * 100 + n * 10 + d 
                                        + m * 1000 + o * 100 + r * 10 + e
                                        == m * 10000 + o * 1000 + n * 100 + e * 10 + y):
                                    print(s , e , n , d , "+", m , o , r , e , 
                                            "=", m , o , n , e , y)
                                   # print("s e n d + m o r e = m o n e y")
