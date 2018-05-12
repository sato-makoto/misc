#!/bin/sh
for num in `seq 1 80 654`
do 
  convert -resize 256 ${num}.png \
    `printf "flame%03d" $y `.png
  y=`expr $y + 1`
done

apngasm output.png flame*.png

