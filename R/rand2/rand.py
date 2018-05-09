#!/usr/bin/env python3
import secrets
print('Number Times')
z = 0
intlist = [x for x in range(100)]
for x in range(100):
	print (x,  secrets.choice(intlist))
