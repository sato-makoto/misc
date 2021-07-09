#!/usr/bin/env Rscript
# create graph of uq_wimax, iij, softbank ping data
# data files: uqdata, iijdata, sbdata

args = commandArgs(trailingOnly=TRUE)

uq=read.table("uqdata", header=T)
iij=read.table("iijdata", header=T)
sb=read.table("sbdata", header=T)
png(filename=paste("three_carrers",".png",sep=""), width=1024,height=768)
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        uq$Time, uq$MS,
        type="l", 
	col="3",
#	log="y",
#	ylim=c(0.02,0.05),
        xlab="ping time",
        ylab="ms",
        main="ping -6 -c 300 www.kuzuore.com"
        )
points	(
        iij$Time, iij$MS,
	type="l",
	col="4",
)
points	(
        sb$Time, sb$MS,
	type="l",
	col="5",
)
legend	("topright", c("UQ Wimax", "IIJ", "SB"),
	pch = 15,
	col = c(3,4,5)
)
dev.off()

