#!/usr/bin/env python3
from sys import stdin

max_char = 13
#f = open(argv[1],'r')
list1 = []
for x in stdin:
  list1.append(x.strip())
#f.close()

"""
print('テストです',end='\n\n') 

for y in list1:
  for z in y:
    print(z, end=' ')
  print(' ')

print('')
"""

list2 = []
for x in list1:
  list2.append(list(x))

for y in list2:
  while len(y) < max_char + 1:
    y.append('＿')

list3 = []
for x in range(max_char):
  bar = [foo[x] for foo in list2]
  bar.reverse()
  list3.append(bar)

for y in list3:
  if len(y) != y.count('＿'):
    for z in y:
      if z == '＿':
        print('　', end=' ')
      else:
        print(z, end=' ')
    print('')
