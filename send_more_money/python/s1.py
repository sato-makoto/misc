#!/usr/bin/env python3

def get_1(add1):
    s = add1 // 1000
    e = add1 % 1000 // 100
    n = add1 % 1000 % 100 // 10
    d = add1 % 10
    return (s, e, n, d)

def get_2(add2):
    m = add2 // 1000
    o = add2 % 1000 // 100
    r = add2 % 1000 % 100 // 10
    return (m, o, r)

def get_3(total):
    y = total % 10
    return (y)

for x in range(1000, 10000):
    for y in range(1000, 10000):
        for z in range(10000, 20000):
            s, e, n, d = get_1(x)
            m, o, r = get_2(y)
            y = get_3(z)
            add1 = s * 1000 + e * 100 + n * 10 + d
            add2 = m * 1000 + o * 100 + r * 10 + e
            total = m * 10000 + o * 1000 + n * 100 + e * 10 + y
            print(add1, add2, total)
            if add1 + add2 == total:
                print(add1 , " + ", add2, " = ", total)

