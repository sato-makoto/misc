#!/usr/bin/env python3
# led-name-badge-ls32 font decode test script 

# arg(1) means strings like "0x00,0x38,0x6c,0xc6,0xc6,0xfe,0xc6,0xc6,0xc6,0xc6,0x00"
# with NO space

import re
from sys import argv

esc_num=36
esc = "\33[{}m0\033[00m".format(esc_num)
mystr = argv[1].split(',')
# print (mystr)

for x in mystr:
    x = int(x,16)
    decode = '{:>10}'.format(bin(x)).replace('0b','').replace(' ','0')
    myline = re.sub('(.)', r'\1 ', decode).replace('0',' ')
    print(myline.replace("1", esc))
