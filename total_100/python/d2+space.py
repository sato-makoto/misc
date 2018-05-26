#!/usr/bin/env python3
from sys import argv

fifth_op="+-*/ "
full_num = 5**8
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
	total = one + sp + fifth_op[num//5**7%5] + sp + \
		two + sp + fifth_op[num//5**6%5] + sp + \
		three + sp + fifth_op[num//5**5%5] + sp + \
		four + sp + fifth_op[num//5**4%5] + sp + \
		five + sp + fifth_op[num//5**3%5] + sp + \
		six + sp + fifth_op[num//5**2%5] + sp + \
		seven + sp + fifth_op[num//5**1%5] + sp + \
		eight + sp + fifth_op[num//5**0%5] + sp + \
		nine
	total = total.replace(' ','')
	evnum = eval(total)
	if evnum == all:
		print(total, '=', evnum)
