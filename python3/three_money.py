#!/usr/bin/env python3

setlist = []
mlist = [1,5,10,50,100,500]
for x in mlist:
    for y in mlist:
        for z in mlist:
            t = x+y+z
            if not t in setlist:
                setlist.append(t)
                print(x,"+",y,"+",z,"=",x+y+z)

# setlist.sort()
# print(setlist)
