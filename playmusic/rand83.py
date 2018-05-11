#/usr/bin/env pythone
from random import shuffle
from random import seed
seed()
list = [x for x in range(83)]
shuffle(list)
f = open('p.txt', 'w')
for x in list:
	f.write(str(x))
	f.write("\n")
f.closed
