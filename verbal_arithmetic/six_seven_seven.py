#!/usr/bin/env python3

# six + seven + seven = twenty
# s i x e v n t w y
# (s, 

t = 1
for y in range(10):
    for w in range(10):
        for n in range(10):
            for v in range(10):
                for e in range(10):
                    for x in range(10):
                        for i in range(10):
                            for s in range(1,10):
                                check = {s, i, x, e, v, n, t, w, y}
                                six = s * 100 + i * 10 + x
                                seven = s * 10000 + e * 1000 + v * 100 + e * 10 + n
                                twenty = t * 100000 + w * 10000 + e * 1000 + n * 100 + t * 10 + y
                                if (len(check) == 9) and  \
                                        six + seven * 2 == twenty:
                                            print(s, i, x, "+", s, e, v, e, n, "+", s, e, v, e, n, "=", t, w, e, n, t, y)
