#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
        mydata$node, mydata$line,
        type="l", 
        xlab="nodes",
        ylab="Lines Number",
	xlim=c(0,100),
	lwd=3,
        main="Lines numbers from 0 to 100"
        )
dev.off()

