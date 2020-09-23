#!/usr/bin/env python3
import random

hearts = [(x, "ハート") for x in range(1,14)]
tiles = [(x, "ダイヤ") for x in range(1,14)]
clovers = [(x, "クラブ") for x in range(1,14)]
pikes = [(x, "スペード") for x in range(1,14)]
jokers = [(1, "ジョーカー"), (2, "ジョーカー")]

all =  hearts + tiles + clovers + pikes + jokers
"""
for x in all:
  print(x)
"""

mycards = []
for x in range(18):
  random.seed()
  random.shuffle(all)
  mycards.append(all.pop())

for x in mycards:
  print(x[0], x[1])
  
