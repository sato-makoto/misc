#!/usr/bin/env Rscript

# original(?) sine curve graph script

args = commandArgs(trailingOnly=TRUE)
mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
plot    (
	mydata$angle,
        mydata$sin,
        type="l", 
        xlab="angle",
        ylab="sin(θ)",
	lwd=3,
	col=2,
        main="Sine Curve"
        )
legend("topright",c("sin(θ)"),
		pch = 15,
		col = c(2)
	)
warnings()
dev.off()

