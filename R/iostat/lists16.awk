#!/usr/bin/env awk

# 1 Device
# 2 r/s
# 3 w/s
# 4 rkB/s
# 5 wkB/s
# 6 rrqm/s
# 7 wrqm/s
# 8 %rrqm
# 9 %wrqm
# 10 r_await
# 11 w_await
# 12 aqu-sz
# 13 rareq-sz
# 14 wareq-sz
# 15 svctm
# 16 %util


BEGIN {
	sdb[3] = "sdb_ws"
	sdb[5] =  "sdb_wkB_s"
       	sdb[11] =  "sdb_w_await"
       	sdb[14] = "sdb_wareq"
       	sdb[16] = "sdb_util"
	sda[2] = "sda_rs"
	sda[4] =  "sda_rkB_s"
       	sda[10] =  "sda_r_await"
       	sda[13] = "sda_rareq"
       	sda[16] = "sda_util"
       	b = 1
       	c = 1
       	for(i in sdb) {
	       	print "Time", sdb[i] > sdb[i]
       	}
       	for(i in sda) {
	       	print "Time", sda[i] > sda[i]
       	}
}

$1 == "sdb"{
       	for(i in sdb) {
	       	print b, $i >> sdb[i]
       	}
	b++
}
$1 == "sda"{
       	for(j in sda) {
	       	print c, $j >> sda[j]
       	}
	c++
}
