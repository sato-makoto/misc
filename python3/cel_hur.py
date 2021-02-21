#!/usr/bin/python3
from sys import argv
print("c h")
min = int(argv[1])
max = int(argv[2])
for c in range(min,max):
  h = round((9/5) * c + 32, 1)
  print(c,h)
