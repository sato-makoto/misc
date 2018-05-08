#!/usr/bin/env python3
import random
print('Number Times')
intlist = [0 for x in range(100)]
z = 0
for x in range(10000):
	random.seed()
	intlist[random.randint(0,99)] += 1

for y in intlist:
	print(z, y)
	z+=1

