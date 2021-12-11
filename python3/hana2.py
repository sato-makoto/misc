#!/usr/bin/env python3
# shuffle and print argv[1]
from sys import argv
from random import shuffle

print("from:", argv[1])
mystr = list(argv[1])
shuffle(mystr)
print("to:   ", sep=" ", end="")
for x in mystr:
    print(x, sep="", end="")
print("")
