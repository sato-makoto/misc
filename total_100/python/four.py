#!/usr/bin/env python3

num = 0
oper = '+-*/'
"""
for x in oper:
  for y in oper:
    for z in oper:
#      print('1 {} 2 {} 3 {} 4'.format(x,y,z), ' : ', num//4//4%4, num//4%4,  num%4)
"""

"""
while(num <  64):
      print('1 {} 2 {} 3 {} 4'.format(oper[num//4//4%4], oper[num//4%4], oper[num%4]))
      num+=1
"""

for n2 in range(64):
      print('1 {} 2 {} 3 {} 4'.format(oper[n2//4//4%4], oper[n2//4%4], oper[n2%4]))

