#!/usr/bin/env python
from sys import argv
try:
  last = int(argv[1])
except:
  print "No last number"
  exit(2)
last = last + 1
print '#include<stdio.h>\nint main(){'
 
for x in range(1,last):
  if not (x % 15):
     print '	printf("fizzbuzz\\n");'
  elif not (x % 5):
     print '	printf("buzz\\n");'
  elif not (x % 3):
     print '	printf("fizz\\n");'
  else: print  '	printf("'+ str(x) + '\\n");'
 
print '	return 0;\n}'

