#!/bin/sh

python3 rand.py >rand
sed -i '$d' rand
sed -n 2p rand >>rand
sed -i '$s/0/99/' rand

echo 'Number Times\n0 0' >zero

Rscript ../graph_rand100.r rand
Rscript ../graph_rand100.r zero


WIDTH=654
HEIGHT=450
ZERO=zero.png
TEMP=r.png
y1=0
y2=0

convert -crop  654x450+84+70 +repage rand.png $TEMP

if [ ! -d jpg ]; then
  mkdir jpg
fi
if [ ! -d png ]; then
  mkdir png
fi

for i in `seq $WIDTH`
do 
   y1=`expr $y1 + 1` 
   convert -crop ${y1}x${HEIGHT}+0+0 +repage $TEMP r1.png
   y2=`expr $WIDTH - $y1` 
   convert -crop ${y2}x${HEIGHT}+${y1}+0 +repage $TEMP r2.png
   convert +append r2.png r1.png ap.png
   convert -composite -geometry +84+70 zero.png ap.png png/${i}.png
   convert png/${i}.png jpg/${i}.jpg
done

cd jpg
sh enc.sh
cd - 
rm *.png
