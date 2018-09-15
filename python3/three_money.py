#!/usr/bin/env python3

mset = set()
mlist = [1,5,10,50,100,500]
for x in mlist:
    for y in mlist:
        for z in mlist:
            t = x+y+z
            if not t in mset:
                mset.add(t)
                print(x,"+",y,"+",z,"=",x+y+z)

# print(mset)
