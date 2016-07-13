#!/usr/bin/env python3
# loop
# print filesize; sleep NUM

from sys import argv
from os import stat
from time import sleep
 
maxsize = int(argv[2])
sleeptime = float(argv[3])
oldsize, size = 0, 0
 
while size < maxsize:
  size = stat(argv[1]).st_size
  print(size, size - oldsize)
  oldsize = size
  sleep(sleeptime)

