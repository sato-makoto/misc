def foolish(a,b,c,d,e,f,g,h,i):
  if a == b or a == c or a == d or a == e or \
   a == f or a == g or a == h or a == i or \
   b == c or b == d or b == e  or \
   b == f or b == g or b == h or b == i or \
   c == d or c == e  or \
   c == f or c == g or c == h or c == i or \
   d == e  or \
   d == f or d == g or d == h or d == i or \
   e == f or e == g or e == h or e == i or \
   f == g or f == h or f == i or \
   g == h or g == i or \
   h == i :
     return False
  else:
     return True

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
                   if foolish(k, l, m, n, o, p, q, r, s) and \
                       (13.0 * l) % m  == 0 and (q * r) % s == 0 \
                       and k + 13 * l / m + n + 12 * o - p - 11 + q * r / s - 10 == 66:
                        print k, l, m, n, o, p, q, r, s

