#!/usr/bin/env python3
from sys import argv

fifth_op="+-*/ "
full_num = 5**8

try:
    [one, two, three, four, five, six, seven, eight, nine ] = \
      argv[1], argv[2], argv[3], argv[4], argv[5], argv[6], \
      argv[7], argv[8], argv[9]
    all = int(argv[10])
except:
    [one, two, three, four, five, six, seven, eight, nine ] = \
      ['1', '2', '3', '4', '5', '6', '7', '8', '9']
    all = 100

for num in range(full_num):
	total = one + fifth_op[num//5**7%5] + \
		two + fifth_op[num//5**6%5] + \
		three + fifth_op[num//5**5%5] + \
		four + fifth_op[num//5**4%5] + \
		five + fifth_op[num//5**3%5] + \
		six + fifth_op[num//5**2%5] + \
		seven + fifth_op[num//5**1%5] + \
		eight + fifth_op[num//5**0%5] + \
		nine
	total = total.replace(' ','')
	evnum = eval(total)
	if evnum == all:
		print(total, '=', evnum)
