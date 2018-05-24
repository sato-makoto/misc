#!/bin/sh

# https://www.kuzuore.com/~kuzu/diary/?date=20180524#p04

echo "Total Numbers" > d2_100
for x in `seq 100`
do 
  echo -n $x" "
  python3 d2.py 9 9 9 9 9 9 9 9 9 $x | \
     wc -l
done | \
  tee >> d2_100

Rscript test_png.r d2_100
