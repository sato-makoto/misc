#!/usr/bin/env python3

four_op="+-*/"

for a in four_op:
  for b in four_op:
    for c in four_op:
                num = eval(f"1 {a!s} 1 {b!s} 9 {c!s} 9")
                print (f"1 {a!s} 1 {b!s} 9 {c!s} 9 = {num!s}")
