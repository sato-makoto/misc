#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

wan=read.table("uqdata", header=T)
lan=read.table("wifidata", header=T)
png(filename=paste("ping_wan_and_lan",".png",sep=""), width=1024,height=768)
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        lan$Time, lan$MS,
        type="l", 
	col="3",
#	log="y",
	ylim=c(0,250),
        xlab="ping time",
        ylab="ms",
        main="wireless ping -c 100 wan and router"
        )
points	(
        wan$Time, wan$MS,
	type="l",
	col="4",
)
legend	("topright", c("ping wan host", "ping wifi router"),
	pch = 15,
	col = c(4,3)
)
dev.off()

