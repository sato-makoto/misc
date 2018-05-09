#!/usr/bin/env python3
import secrets
import random 
from sys import argv

print('Number Times')
z = 0
intlist = [x for x in range(100)]

for x in range(100):
	try:
		if argv[1] == 'secret':
			print (x,  secrets.choice(intlist))
	except:
			random.seed()
			print (x,  random.randint(0,100))
