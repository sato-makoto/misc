#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

mydata=read.table("second", header=T)
mydata2=read.table("real", header=T)
png(filename="second.png", width=1024,height=768)
date = paste("作成日時: ", Sys.time())
plot    (
	mydata$Time,
        mydata$Second,
	col="2",
        type="h", 
	lwd=1,
#	log="y",
        xlab="Times",
        ylab="Remaining Seconds",
        main="ddrescueの予想した「残り時間(秒)」"
        )
points  (
	mydata2$Time,
        mydata2$Second,
	col="3",
        type="l", 
	lwd="2",
	)
legend  ("topright",c("表示された残り時間", "実際の残り時間"),
	pch = 16,
	col = c(2,3)
	)
mtext(text=date, adj = 0)
warnings()
dev.off()

