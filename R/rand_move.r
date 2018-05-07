#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
        mydata$Number, mydata$Times,
        type="l", 
        xlab="Number",
        ylab="Times",
	ylim=c(70,125),
	xlim=c(0,100),
	lwd=3,
        main="$RANDOM % 100",
        )
dev.off()

