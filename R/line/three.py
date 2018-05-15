#!/usr/bin/env python3

print("Number Times")
x = 0
y = 300
z = 200
for a in range(0,300,3):
   print("{} {}\n{} {}\n{} {}".format(a, x, a+1, y, a+2, z))
   x = x+3
   y = y-3
   z = z
