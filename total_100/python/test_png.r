#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)             


mydata=read.table(args, header=T)                 
png(filename=paste(args,".png",sep=""), width=800,height=600)  
plot    (
        mydata$Total, mydata$Number,
        type="h", 
        xlab="Number",
        ylab="total value",
	log="y",
        main="nine numbers and eight operators = x",
        )
dev.off()

