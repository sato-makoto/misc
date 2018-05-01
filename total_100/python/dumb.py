#!/usr/bin/env python3
from sys import argv

four_op="+-*/"

try:
  [one, two, three, four, five, six, seven, eight, nine ] = \
    argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], \
    argv[7], argv[8], argv[9]
except:
  [one, two, three, four, five, six, seven, eight, nine ] = \
    [1, 2, 3, 4, 5, 6, 7, 8, 9]

for a in four_op:
  for b in four_op:
    for c in four_op:
      for d in four_op:
        for e in four_op:
          for f in four_op:
            for g in four_op:
              for h in four_op:
                num = eval('{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {}'. \
                    format(one, a, two, b, three, c, four, d, five, e, six, f, \
                        seven, g, eight, h, nine))
                if num == 100:
                    print('{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} = {}'. \
                    format(one, a, two, b, three, c, four, d, five, e, six, f, \
                        seven, g, eight, h, nine, num))
