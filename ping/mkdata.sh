#!/bin/sh
# create graph data and make graph

if [ ! -b "zerodata" ]; then
	awk 'BEGIN{print "Time MS"; for(x=1; x<101; x++){print x, 0}}' >zerodata
fi
mkdir -pv r scripts data/old

for old in oldlan olduq oldwan
do
	awk -f ping_record.awk *$old > ${old}data
	mv *$old data/old/
done

for new in newlan newuq newwan
do
	awk -f ping_record.awk *$new > ${new}data
done


for num in sb iij
do
	awk -f ping_record.awk *$num > ${num}data
done

for r in *.r
do
	echo $r
	Rscript  $r
done

mv *.r  r
mv *.sh *.awk scripts
find . -maxdepth 1 -type f -not -name '*.png' -exec mv {} data \;
