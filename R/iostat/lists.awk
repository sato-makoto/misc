 #!/usr/bin/env awk

#  1: Device
#  2: r/s
#  3: rkB/s
#  4: rrqm/s
#  5: %rrqm
#  6: r_await
#  7: rareq-sz
#  8: w/s
#  9: wkB/s
# 10: wrqm/s
# 11: %wrqm
# 12: w_await
# 13: wareq-sz
# 14: d/s
# 15: dkB/s
# 16: drqm/s
# 17: %drqm
# 18: d_await
# 19: dareq-sz
# 20: aqu-sz
# 21: %util

BEGIN {
	sdb[8] = "sdb_ws"
	sdb[9] =  "sdb_wkB_s"
       	sdb[12] =  "sdb_w_await"
       	sdb[13] = "sdb_wareq"
       	sdb[21] = "sdb_util"
	sda[2] = "sda_rs"
	sda[3] =  "sda_rkB_s"
       	sda[6] =  "sda_r_await"
       	sda[7] = "sda_rareq"
       	sda[21] = "sda_util"
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
