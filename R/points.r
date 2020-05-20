#!/usr/bin/env Rscript

# $ for x in `seq 10000`; do echo `expr $RANDOM % 83` >> times.txt; done
# $ sort -n times.txt |uniq -c | awk '{print $2, $1}' >source.txt

 
fst=read.table("1st", header=T)
snd=read.table("2nd", header=T)
trd=read.table("3rd", header=T)
png(filename="test.png", width=640,height=480)
#pdf(file="test.pdf")
plot(
	fst$num, fst$first, type="l", col="1",
        xlab="回数",
        ylab="数",
        main="グラフの重ねテスト"
)
points(
	snd$num, snd$second, type="l",col="2",
)
points(
	trd$num, trd$third, type="l", col="3",
        )
legend("topright",c("first", "second", "third"),
		pch = 20,
		col = c(1,2,3)
	)
warnings()
dev.off()
