# ping(8)
# http://www.kuzuore.com/~kuzu/diary/?date=20160712#p03
# ping $IP_ADDR 
# 64 bytes from 192.168.0.1: icmp_seq=1 ttl=255 time=1.79 ms
# 64 bytes from 192.168.0.1: icmp_seq=2 ttl=255 time=1.36 ms
# 64 bytes from 192.168.0.1: icmp_seq=4 ttl=255 time=1.38 ms
#
# changed ping data to source file of PNG 
# gawk -f ping_record.awk PING_FILE >source.txt
#
# Time MS
# 1 1.79
# 2 1.36
# 3 0 <- No return.
# 4 1.38
#
BEGIN { print "Time MS" }
$1==64 {
                serial += 1
		if ($5 ~ "icmp_seq=*") {
			num = $5
			time = $7 }
		else {
			num = $6
			time = $8 }
		sub("icmp_seq=","",num)
		sub("time=","",time)
                while (serial < int(num)) {
                        print serial, 0
                        serial += 1
                }
                print num, time
        }
