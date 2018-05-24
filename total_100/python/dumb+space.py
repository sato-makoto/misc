#!/usr/bin/env python3
from sys import argv

fifth_op="+-*/ "

try:
  [one, two, three, four, five, six, seven, eight, nine ] = \
    argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], \
    argv[7], argv[8], argv[9]
  all = int(argv[10])
except:
  [one, two, three, four, five, six, seven, eight, nine ] = \
    [1, 2, 3, 4, 5, 6, 7, 8, 9]
  all = 100

for a in fifth_op:
  for b in fifth_op:
    for c in fifth_op:
      for d in fifth_op:
        for e in fifth_op:
          for f in fifth_op:
            for g in fifth_op:
              for h in fifth_op:
                num='{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {}'.\
                    format(one, a, two, b, three, c, four, d, five, e, six, f, \
                        seven, g, eight, h, nine)
                num = num.replace(' ', '')
                if eval(num) == all:
                    print(num, '=', eval(num))
