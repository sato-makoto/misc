#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)


mydata=read.table(args, header=T)
my2=read.table("1", header=T)
png(filename=paste(args,"_2.png",sep=""), width=800,height=600)
plot    (
	mydata$angle,
        mydata$sin,
        type="b", 
        xlab="angle",
        ylab="sin(θ)",
	ylim=c(-1,1),
	xlim=c(0,3601),
	lwd=2,
	col=2,
        main="Sine Curve"
        )
points(
	my2$angle,
        my2$sin,
        type="l", 
	lwd=1,
	col=8

      )
legend("topright",c("sin(θ)"),
		pch = 15,
		col = c(2)
	)
warnings()
dev.off()

