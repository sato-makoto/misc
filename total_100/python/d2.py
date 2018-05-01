#!/usr/bin/env python3
from sys import argv

four_op="+-*/"
full_num = 4**8

try:
  [one, two, three, four, five, six, seven, eight, nine ] = \
    argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], \
    argv[7], argv[8], argv[9]
except:
  [one, two, three, four, five, six, seven, eight, nine ] = \
    [1, 2, 3, 4, 5, 6, 7, 8, 9]

for num in range(full_num):
	total = '{} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {} {}'. \
		format(
		one, four_op[num//4//4//4//4//4//4//4%4],
		two, four_op[num//4//4//4//4//4//4%4],
		three, four_op[num//4//4//4//4//4%4],
		four, four_op[num//4//4//4//4%4],
		five, four_op[num//4//4//4%4],
		six, four_op[num//4//4%4],
		seven, four_op[num//4%4],
		eight, four_op[num%4],
		nine)
	evnum = eval(total)
	if evnum == 100:
		print(total, ' = ', evnum)
