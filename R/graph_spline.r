#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
        mydata$Number, mydata$Times,
        type="h", 
        xlab="Times",
        ylab="Number",
	ylim=c(0,300),
	xlim=c(0,300),
	lwd=1,
        main="Three numbers from 0 to 300"
        )
dev.off()

