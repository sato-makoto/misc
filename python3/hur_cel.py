#!/usr/bin/python3
from sys import argv
min = int(argv[1])
max = int(argv[2])
print("h c")
for h in range(min,max):
  c = round(5/9 * (h - 32), 1)
  print(h,c)
