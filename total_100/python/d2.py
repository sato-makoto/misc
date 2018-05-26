#!/usr/bin/env python3
from sys import argv

four_op="+-*/"
full_num = 4**8
sp = ' '

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
	total = one + sp + four_op[num//4**7%4] + sp + \
		two + sp + four_op[num//4**6%4] + sp + \
		three + sp + four_op[num//4**5%4] + sp + \
		four + sp + four_op[num//4**4%4] + sp + \
		five + sp + four_op[num//4**3%4] + sp + \
		six + sp + four_op[num//4**2%4] + sp + \
		seven + sp + four_op[num//4**1%4] + sp + \
		eight + sp + four_op[num//4**0%4] + sp + \
		nine
	evnum = eval(total)
	if evnum == all:
		print(total, ' = ', evnum)
