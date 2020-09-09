#!/bin/sh
echo 'Time Percent' > percent
awk '$1=="pct"{gsub("%,","",$3);print $3}' typescript | cat -n >> percent
