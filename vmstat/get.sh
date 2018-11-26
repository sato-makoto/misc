#!/usr/bin/sh

# from typescript get data
# make png graph from vmstat while dd if=/dev/MicroSD of=images
# awk rounding technique is from 
# https://blog.trippyboy.com/2011/shell/bash%E3%81%A7%E5%9B%9B%E6%8D%A8%E4%BA%94%E5%85%A5%E3%81%97%E3%81%9F%E3%81%84%E3%81%AE%E5%B7%BB/

echo "Time BS" >d
grep "^ [0-9]" typescript | head -n100 | \
	awk '{printf(NR" "); printf("%d\n", $10/1024+0.5)}' >>d
Rscript vmstat_png.r d
