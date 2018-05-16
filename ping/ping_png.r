#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
        mydata$Time, mydata$MS,
        type="h", 
	ylim=c(0.02,0.05),
        xlab="ping",
        ylab="ms",
        main="ping -c 300 router",
        )
dev.off()

