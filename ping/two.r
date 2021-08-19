#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

wan=read.table("wandata", header=T)
lan=read.table("landata", header=T)
zero=read.table("zerodata", header=T)
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
        ylab="ms(0 means packet loss)",
        main="wireless ping6 -c 100 wan and router"
        )
points	(
        wan$Time, wan$MS,
	type="l",
	col="4",
)
points	(
        zero$Time, zero$MS,
	type="l",
	col="2",
)
legend	("topright", c("ping wan host", "ping wifi router"),
	pch = 15,
	col = c(4,3)
)
dev.off()

