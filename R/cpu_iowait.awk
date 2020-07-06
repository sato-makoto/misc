#!/usr/bin/env awk

BEGIN{
	cpu[0]="iowait_cpu0"
	cpu[1]="iowait_cpu1"
	cpu[2]="iowait_cpu2"
	cpu[3]="iowait_cpu3"
	for (x in cpu){
		print "Time iowait" > cpu[x]
	}
	for (y=0; y<4; y++){
	       	lnum[y]=0
	}
}

{
	for(x=0; x<4; x++) {
		if($2==x){
			lnum[x]+=1
			print lnum[x],$6 >> cpu[x]
		}
	}
}
	
