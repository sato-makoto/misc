#!/usr/bin/env Rscript
# no test
args = commandArgs(trailingOnly=TRUE)

mydata=read.table(args, header=T)
png(filename=paste("small",args,".png",sep=""), width=256,height=192)
par(ps=6,oma=c(1,1,1,1),
    mar=c(1.3,1.3,1.3,1.3))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        mydata$Time, mydata$MS,
        type="h", 
	log="y",
#	ylim=c(0.02,0.05),
#        xlab="ping time",
#        ylab="ms(log)",
        main="ping 8.8.8.8 in 地下鉄谷町線 中崎町-東梅田間(対数表示)",
        )
dev.off()

