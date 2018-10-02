#!/usr/bin/env python3

"""
       S I X
   S E V E N
 + S E V E N
--------------
 T W E N T Y

S I X E V N T W Y

a + 2b = c

"""

def all_not_eq(s, i, x, e, v, n, t, w, y):
	if len({s, i, x, e, v, n, t, w, y}) == 9:
		return True
	else:
		return False

def s_eq(a, b):
	if str(a)[0] == str(b)[0]:
		return True
	else:
		return False
def e_eq(b, c):
	if str(b)[1] == str(b)[3] == str(c)[2]:
		return True
	else:
		return False
def n_eq(b, c):
	if str(b)[4] == str(c)[3]:
		return True
	else:
		return False
def t_eq(c):
	if str(c)[0] == str(c)[4]:
		return True
	else:
		return False


for a in range(100,1000):
	for b in range(10000, 100000):
		c = a + b * 2
		if c > 99999:
			s, i, x = str(a)
			e, v, n = str(b)[1], str(b)[2], str(b)[4]
			t, w, y = str(c)[0], str(c)[1], str(c)[5]
			if all_not_eq(s, i, x, e, v, n, t, w, y) \
				and s_eq(a, b) \
				and e_eq(b, c) \
				and n_eq(b, c) \
				and t_eq(c):
			    print("S I X + S E V E N + S E V E N = T W E N T Y")
			    all = [x for x in str(a)+str(b)+str(c)]
			    mes = '{0[0]} {0[1]} {0[2]} + '.format(all)
			    mes = mes + '{0[3]} {0[4]} {0[5]} {0[6]} {0[7]} + '.format(all)
			    mes = mes + '{0[3]} {0[4]} {0[5]} {0[6]} {0[7]} = '.format(all)
			    mes = mes + '{0[8]} {0[9]} {0[10]} {0[11]} {0[12]} {0[13]}'.format(all)
			    print(mes)
			    exit(0)
