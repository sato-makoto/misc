#!/usr/bin/env python3

four_op=('+', '-', '*', '//')


for a in four_op:
  for b in four_op:
    for c in four_op:
      for d in four_op:
        for e in four_op:
          for f in four_op:
            for g in four_op:
              for h in four_op:
                num = eval(f"1 {a!s} 2 {b!s} 3 {c!s} 4 {d!s} 5 {e!s} \
                             6 {f!s} 7 {g!s} 8 {h!s} 9")
                print (f"1 {a!s} 2 {b!s} 3 {c!s} 4 {d!s} 5 {e!s} \
                           6 {f!s} 7 {g!s} 8 {h!s} 9 = {num!s}".replace("   ",""))
