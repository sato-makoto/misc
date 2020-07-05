#!/usr/bin/env awk

BEGIN{
	cpu[0]="bin_cpu0"
	cpu[1]="bin_cpu1"
	cpu[2]="bin_cpu2"
	cpu[3]="bin_cpu3"
	for (x in cpu){
		print "Time user" > cpu[x]
	}
	for (y=0; y<4; y++){
	       	lnum[y]=0
	}
}

{
	for(x=0; x<4; x++) {
		if($2==x){
			lnum[x]+=1
			print lnum[x],$3 >> cpu[x]
		}
	}
}
	
