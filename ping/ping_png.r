#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

mydata=read.table(args, header=T)
png(filename=paste(args,".png",sep=""), width=800,height=600)
date = paste("作成日時: ", Sys.time())
par(ps=16,oma=c(2,2,2,2))
# par(family="IPAMincho",ps=20,oma=c(2,2,2,2))
# oma=c(under, left, upper, right)
# mar: inline
plot    (
        mydata$Time, mydata$MS,
        type="h", 
	log="y",
#	ylim=c(0.02,0.05),
        xlab="ping time",
        ylab="ms(log)",
        main="ping 8.8.8.8 in 地下鉄谷町線 中崎町-東梅田間(対数表示)"
        )
mtext(text=date,adj = 0)
warnings()
dev.off()

