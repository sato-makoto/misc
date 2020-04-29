#!/usr/bin/env python3

# http://www.torito.jp/puzzles/311.shtml

#   R S T U
#   S S T U
#   T T T U
# + U U U U
#----------
# X Y Y Y Y

# R S T U X Y

for x in range(1,4):
    for y in range(10):
        for u in range(1,10):
            for t in range(1,10):
                for s in range(1,10):
                    for r in range(1,10):
                        check = {r, s, t, u, x, y}
                        if len(check) == 6:
                            first = r * 1000 + s * 100 + t * 10 + u
                            second = s * 1100 + t * 10 + u
                            third = t * 1110 + u
                            fourth = u * 1111
                            answer = x * 10000 + y * 1111
                            if first + second + third + fourth == answer:
                                print(first, "+", second, "+", third, "+", fourth, "=", answer)

