#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

newwan=read.table("newwandata", header=T)
oldwan=read.table("oldwandata", header=T)
zero=read.table("zerodata", header=T)
png(filename=paste("ping_to_wan",".png",sep=""), width=1024,height=768)
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        oldwan$Time, oldwan$MS,
        type="l", 
	col="3",
#	log="y",
#	ylim=c(0,1600),
        xlab="ping time",
        ylab="ms(0 means packet loss)",
        main="wireless ping6 -c 100 two smartphones"
        )
points	(
        newwan$Time, newwan$MS,
	type="l",
	col="5",
	lwd="2",
)
points	(
        zero$Time, zero$MS,
	type="l",
	col="2",
)
legend	("topright", c("old", "new" ),
	pch = 15,
	col = c(3,5)
)
dev.off()

