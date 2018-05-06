#!/usr/bin/env Rscript

# $ for x in `seq 10000`; do echo `expr $RANDOM % 83` >> times.txt; done
# $ sort -n times.txt |uniq -c | awk '{print $2, $1}' >source.txt

 
mydata=read.table("source.txt", header=T)
png(filename="bash_random.png", width=800,height=600)
plot    (
        mydata$Number, mydata$Times,
        type="l", 
        xlab="Number",
        ylab="Times",
	ylim=c(0,160),
        main="10000 times $RANDOM % 83",
        )
dev.off()

