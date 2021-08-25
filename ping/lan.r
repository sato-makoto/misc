#!/usr/bin/env Rscript

args = commandArgs(trailingOnly=TRUE)

newlan=read.table("newlandata", header=T)
oldlan=read.table("oldlandata", header=T)
zero=read.table("zerodata", header=T)
png(filename=paste("ping_to_lan",".png",sep=""), width=1024,height=768)
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        oldlan$Time, oldlan$MS,
        type="l", 
	col="3",
#	log="y",
#	ylim=c(0,1000),
        xlab="ping time",
        ylab="ms(0 means packet loss)",
        main="wireless ping6 -c 100 to router two smart phones"
        )
points	(
        newlan$Time, newlan$MS,
	type="l",
	col="6",
#	lwd="2",
)
points	(
        zero$Time, zero$MS,
	type="l",
	col="2",
)
legend	("topright", c("old","new"),
	pch = 15,
	col = c(3,6)
)
dev.off()

