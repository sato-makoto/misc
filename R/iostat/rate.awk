#!/usr/bin/env gawk

# awk -f rate.awk typescript
# -> atate and crate data file
#
# is current rate incorrect?

BEGIN {
	FS=":"
	average = "arate"
	print ("Time arate") > average
	current = "crate"
	print ("Time crate") > current
}

function unit(param) {
	if(param~"MB/s")
	{
		gsub("MB/s","",param)
	       	gsub(" ","",param)
		param = $4 * 1024 * 1024
	}
	else if(param~"kB/s")
	{
		gsub("kB/s","",param)
		param = $4 * 1024
       	}
	else if(param~"B/s")
	{
	       	gsub("B/s","",param)
	       	gsub(" ","",param)
       	}
       	gsub("","",param)
	return param
}

$1~"opos"{
	num1 +=1
	print num1, unit($4) >> average
}
$1~"ipos"{
	num2 +=1
	print num2, unit($4) >> current
}
