#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T) 
png(filename=paste(args,".png",sep=""), width=800,height=600)  
plot    (
        mydata$Num, mydata$Total,
        type="h", 
        ylab="Number",
        xlab="total numbers",
	ylim=c(0, 45),
        main="The number of 1 +-*/ ..9 == NUMBER"
        )
dev.off()

