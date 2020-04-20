#!/usr/bin/env python3

# for example 2537
# 2537 // 1000 = 2
# 2537 // 100 % 10 = 5
# 2537 // 10 % 10 = 3
# 2537 % 10 = 7

def get_1(add1):
    s = add1 // 1000
    e = add1 // 100 % 10
    n = add1 // 10 % 10
    d = add1 % 10
    return (s, e, n, d)

def get_2(add2):
    m = add2 // 1000
    o = add2 // 100 % 10
    r = add2 // 10 % 10
    return (m, o, r)

def get_3(total):
    y = total % 10
    return (y)

# x means total
# y means add1
# z means add2
for x in range(10000, 20000):
    for y in range(1000, 10000):
        for z in range(1000, 10000):
            s, e, n, d = get_1(y)
            m, o, r = get_2(z)
            y = get_3(x)
            add1 = s * 1000 + e * 100 + n * 10 + d
            add2 = m * 1000 + o * 100 + r * 10 + e
            total = m * 10000 + o * 1000 + n * 100 + e * 10 + y
#            print(add1, add2, total)
            if add1 + add2 == total:
                print(add1 , " + ", add2, " = ", total)

