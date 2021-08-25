#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

newlan=read.table("newlandata", header=T)
newwan=read.table("newwandata", header=T)
oldlan=read.table("oldlandata", header=T)
oldwan=read.table("oldwandata", header=T)
zero=read.table("zerodata", header=T)
png(filename=paste("ping_lan_wan_old_and_new",".png",sep=""), width=1024,height=768)
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        oldwan$Time, oldwan$MS,
        type="l", 
	col="3",
#	log="y",
#	ylim=c(0,1700),
        xlab="ping time",
        ylab="ms(0 means packet loss)",
        main="wireless ping6 -c 100 wan and router"
        )
points	(
        oldlan$Time, oldlan$MS,
	type="l",
	col="4",
)
points	(
        newwan$Time, newwan$MS,
	type="l",
	col="5",
	lwd="2",
)
points	(
        newlan$Time, newlan$MS,
	type="l",
	col="6",
	lwd="2",
)
points	(
        zero$Time, zero$MS,
	type="l",
	col="2",
)
legend	("topright", c("oldwan", "oldlan", "newwan", "newlan"),
	pch = 15,
	col = c(3,4,5,6)
)
dev.off()

