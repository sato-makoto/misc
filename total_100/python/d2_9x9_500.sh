#!/bin/sh
echo 'Total Number' >9x500
for x in `seq 500`
do 
  echo -n $x" " >>9x500
  python3 d2.py 9 9 9 9 9 9 9 9 9  ${x} | \
     wc -l >>9x500
done

Rscript test_png.r 9x500
