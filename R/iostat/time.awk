#!/usr/bin/env gawk

# awk -F':' -f time.awk typescript
# Time Percent
# 0s 0.00%
# 1s 0.00%
# 2s 0.04%
# 3s 0.07%

BEGIN{
print "Time Percent" 
}

$3~"run" {
	sub("^  *","",$4)
	foo=$4
	}

$1~"pct" {
	sub(", read errors","",$2)
	sub("   ","",$2)
	print  foo $2
	}

