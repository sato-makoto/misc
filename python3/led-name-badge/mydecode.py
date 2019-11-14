#!/usr/bin/env python3
# led-name-badge-ls32 font decode test script 
import re
mystr = [0x00, 0x00, 0x00, 0x18, 0x18, 0x7e, 0x18, 0x18, 0x00, 0x00, 0x00]
for x in mystr:
    decode = '{:>10}'.format(bin(x)).replace('0b','').replace(' ','0')
    myline = re.sub('(.)', r'\1 ', decode)
    print(myline.replace("1", "\33[31m1\033[00m"))

