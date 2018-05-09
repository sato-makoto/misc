#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
        mydata$Number, mydata$Times,
        type="l", 
        xlab="Times",
        ylab="Random Number",
	ylim=c(0,100),
	xlim=c(0,100),
	lwd=3,
        main="$RANDOM numbers from 0 to 100"
        )
dev.off()

