#!/usr/bin/sh

echo '
args = commandArgs(trailingOnly=TRUE)             
mydata=read.table(args, header=T)                 
png(filename=paste(args,".png",sep=""), width=800,height=600)  
plot    (
        mydata$Total, mydata$Number,
        type="h", 
        xlab="Number",
        ylab="total value",
	log="y",
        main="nine numbers and eight operators = x",
	sub="logarithm graph"
        )
dev.off()' | Rscript - 500
mv 500.png 500_l.png

echo '
args = commandArgs(trailingOnly=TRUE)             
mydata=read.table(args, header=T)                 
png(filename=paste(args,".png",sep=""), width=800,height=600)  
plot    (
        mydata$Total, mydata$Number,
        type="h", 
        xlab="Number",
        ylab="total value",
        main="nine numbers and eight operators = x",
	sub="normal graph"
        )
dev.off()' | Rscript - 500

for x in *.png; do convert $x `echo $x | sed 's/png/jpg/'`; done
sh ./enc.sh

