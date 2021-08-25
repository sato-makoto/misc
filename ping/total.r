#!/usr/bin/env Rscript
# create graph of uq_wimax, iij, softbank ping data
# data files: uqdata, iijdata, sbdata

args = commandArgs(trailingOnly=TRUE)

lan=read.table("newlandata", header=T)
uq=read.table("newuqdata", header=T)
iij=read.table("iijdata", header=T)
sb=read.table("sbdata", header=T)
zero=read.table("zerodata", header=T)
png(filename=paste("carriers_and_wifi",".png",sep=""), width=1024,height=768)
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        uq$Time, uq$MS,
        type="l", 
	col="3",
#	log="y",
#	ylim=c(0,250),
        xlab="ping time",
        ylab="ms(0 means packet loss)",
        main="ping -6 -c 100 www.kuzuore.com"
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
points	(
        lan$Time, lan$MS,
	type="l",
	col="1",
)
points	(
        zero$Time, zero$MS,
	type="l",
	col="2",
)
legend	("topright", c("UQ Wimax", "IIJ", "SB", "UQ ping router"),
	pch = 15,
	col = c(3,4,5,1)
)
dev.off()

