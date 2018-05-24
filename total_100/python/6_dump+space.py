#!/usr/bin/env python3
from sys import argv

fifth_op="+-*/ "

try:
  [one, two, three, four, five, six] = \
    argv[1], argv[2], argv[3], argv[4], argv[5], argv[6]
  all = int(argv[7])
except:
  [one, two, three, four, five, six] = \
    [9, 9, 9, 9, 9, 9]
  all = 100

for a in fifth_op:
  for b in fifth_op:
    for c in fifth_op:
      for d in fifth_op:
        for e in fifth_op:
           num='{} {} {} {} {} {} {} {} {} {} {}'.\
                format(one, a, two, b, three, c, four, d, five, e, six)
           num = num.replace(' ', '')
           if eval(num) == all:
              print(num, '=', eval(num))
