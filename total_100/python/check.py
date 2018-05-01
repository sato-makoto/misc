#!/usr/bin/env python3
from sys import argv

def check_line(mylist):
  while len(mylist) > 0:
    x = mylist.pop(0)
    for y in mylist:
#      print(x, y)
      if x == y:
        return False
  return True

"""
if check_line(argv[1:]):
  print("OK")
else:
  print("NG")
"""
