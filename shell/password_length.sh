#!/bin/sh

# count password length from Password Ranking file
# (https://www.ncsc.gov.uk/static-assets/documents/PwnedPasswordTop100k.txt)
# print length, line, password

ifile=$1
if [ -z "$1" ]; then
	echo "No Password Raning file!"
	exit 1
fi
last=`wc -l  $ifile | awk '{print $1}'`

for x in `seq $last`
do
	sed -n ${x}p $ifile  | tr -d '\r\n' |wc -c | tr -d '\n'
	echo -n " "${x}" "
	sed -n ${x}p $ifile 
done

