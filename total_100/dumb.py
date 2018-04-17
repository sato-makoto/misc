#!/usr/bin/env python3

four_op="+-*/"

for a in four_op:
  for b in four_op:
    for c in four_op:
      for d in four_op:
        for e in four_op:
          for f in four_op:
            for g in four_op:
              for h in four_op:
                num = eval('1 {} 2 {} 3 {} 4 {} 5 {} 6 {} 7 {} 8 {} 9'. \
                    format(a, b, c, d, e, f, g, h))
                if num == 100:
                    print('1 {} 2 {} 3 {} 4 {} 5 {} 6 {} 7 {} 8 {} 9 = {}'. \
                       format(a, b, c, d, e, f, g, h, num))
