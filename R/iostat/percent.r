#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

mydata=read.table("percent", header=T)
png(filename="percent.png", width=1024,height=768)
plot    (
	mydata$Time,
        mydata$Percent,
	col="2",
        type="l", 
#	log="y",
        xlab="Times",
        ylab="Percentage(%)",
	lwd=1,
        main="ddrescueの進捗状況(%)"
        )
legend  ("topright",c("進捗状況"),
	pch = 16,
	col = c(2)
	)

dev.off()

