#!/usr/bin/env python3
from sys import argv

f = open(argv[1],'r')
list = []
for x in f:
  list.append(x.strip())
f.close()

print('テストです',end='\n\n') 

for y in list:
  for z in y:
    print(z, end=' ')
  print(' ')

print('')

list3 =[]
for x in range(9):
  bar = [foo[x] for foo in list]
  bar.reverse()
  list3.append(bar)

for y in list3:
  for z in y:
    print(z, end=' ')
  print('')
