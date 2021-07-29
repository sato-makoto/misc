#!/usr/bin/env python3
# factrial use recursive loop
# up to 998 OK.
from sys import argv
num = int(argv[1])
def fact(num):
    if num <  2:
        return num
    else:
        return num * fact(num - 1)

print(fact(num))
