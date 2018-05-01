#!/usr/bin/env python3

allnum = [x for x in range(1,10)]

for a in allnum:
  for b in allnum:
    for c in allnum:
      for d in allnum:
        for e in allnum:
          for f in allnum:
            for g in allnum:
              for h in allnum:
                for i in allnum:
                  numset = {a,b,c,d,e,f,g,h,i}
                  if len(numset) == 9:
                    print(a,b,c,d,e,f,g,h,i)
