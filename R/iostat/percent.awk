#!/usr/bin/env gawk

# sh percent.sh 
# graph data of time and percentage(percent.r)

BEGIN{
print "Time Percent" 
}

$7~"run" {
	gsub("","",$0)
	if (NF==9) {
		if($9~"s") {
			sub("s","",$9)
		} else if ($9~"m") {
			sub("m","",$9)
			$9 = $9 * 60
		} else {
			sub("h","",$9)
			$9 = $9 * 3600
		}
		time=$9
	} else if(NF==10) {
		if($9~"h") {
			sub("h","",$9)
			$9 = $9 * 3600
			if($10~"s") {
				sub("s","",$10)
			} else {
				sub("m","",$10)
				$10 = $10 * 60
			}
		}
		if($9~"m") {
			sub("m","",$9)
			$9 = $9 * 60
			sub("s","",$10)
			}
		time=$9 + $10 
	} else if(NF==11){
		sub("s", "", $11)
		sub("m", "", $10)
		sub("h","", $9)
		$10 = $10 * 60
		$9 = $9 * 3600
		time=$9 + $10 + $11
	}
	}

$1~"pct" {
	sub(",","",$3)
	sub("%","",$3)
	print  time " " $3
	}

