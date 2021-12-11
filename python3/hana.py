#!/usr/bin/env python3
import random
import sys
 
list = [x for x in sys.argv[1]]
random.shuffle(list)
print(''.join([x for x in list]))
