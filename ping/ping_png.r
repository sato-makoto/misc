#!/usr/bin/env Rscript

mydata=read.table("source.txt", header=T)
png(filename="ping100.png", width=800,height=600)
plot    (
        mydata$Time, mydata$MS,
        type="l", 
        xlab="ping",
        ylab="ms",
	ylim=c(0,3500),
        main="ping -c 100 OPENVPN_FROM_REMOTE",
        )
dev.off()

