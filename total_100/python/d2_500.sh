#!/bin/sh
echo 'Total Number' >500
for x in `seq 500`
do 
  echo -n $x" " >>500
  python3 d2.py 1 2 3 4 5 6 7 8 9 ${x} | \
     wc -l >>500
done

Rscript test_png.r 500
