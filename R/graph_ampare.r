#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
	mydata$Times,
        mydata$Number,
        type="l", 
        xlab="Times",
        ylab="mA",
	ylim=c(0,180),
	lwd=3,
        main="Micro:bit 電流測定「真ん中のド」から「上のド」まで"
        )
dev.off()

