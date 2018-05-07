# ping(8)
# http://www.kuzuore.com/~kuzu/diary/?date=20160712#p03
# ping $IP_ADDR 
# 64 bytes from 192.168.0.1: icmp_seq=1 ttl=255 time=1.79 ms
# 64 bytes from 192.168.0.1: icmp_seq=2 ttl=255 time=1.36 ms
# 64 bytes from 192.168.0.1: icmp_seq=4 ttl=255 time=1.38 ms
#
# 1 1.79
# 2 1.36
# 3 2000000
# 4 1.38
#
BEGIN { print "Time MS" }
$1==64 {
                serial += 1
                sub("icmp_seq=","",$5)
                sub("time=","",$7)
                while (serial < int($5)) {
                        print serial, 2000000
                        serial += 1
                }
                print $5,$7
        }
