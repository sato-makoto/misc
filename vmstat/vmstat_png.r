#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
        mydata$Time, mydata$BS,
        type="l", 
	xlim=c(0, 100),
        xlab="vmstat -M S 1",
        ylab="1024 Block Out",
        main="vmstat(8) while dd from MicroSD",
        )
dev.off()

