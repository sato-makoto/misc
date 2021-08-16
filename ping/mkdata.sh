#!/bin/sh
# create graph data and make graph
for num in sb iij uq lan wan
do
	awk -f ping_record.awk *$num > ${num}data
done

Rscript two.r
Rscript total.r

mkdir -pv r scripts data
mv *.r  r
mv *.sh *.awk scripts
find . -maxdepth 1 -type f -not -name '*.png' -exec mv {} data \;
