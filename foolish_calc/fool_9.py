def foolish(a,b,c,d,e,f,g,h,i):
  myset = set([a,b,c,d,e,f,g,h,i])
  if len(myset) == 9:
    return True
  else:
    return False

lines = [ x for x in range(1,10)]

for k in lines:
  for l in lines:
    for m in lines:
      for n in lines:
        for o in lines:
          for p in lines:
            for q in lines:
              for r in lines:
                 for s in lines:
                   if foolish(k, l, m, n, o, p, q, r, s):
#                      if (13.0 * l) % m  == 0 and (q * r) % s == 0 \
#                       and k + 13 * l / m + n + 12 * o - p - 11 + q * r / s - 10 == 66:
                        print k, l, m, n, o, p, q, r, s

