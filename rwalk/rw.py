#!/usr/bin/env python3
from sys import argv
import random

try:
  t = int(argv[1])
except:
  t = 10

x = 0
y = 0

randmax = 10
randmin = -10

for t in range(t):
  x = x + random.randint(randmin,randmax)
  y = y + random.randint(randmin,randmax)

print(x, y)

