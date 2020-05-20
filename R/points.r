#!/usr/bin/env Rscript

# 1st, 2nd, 3rd txt files
#num first
#1 1
#2 2
#3 5
#4 1
#5 4

#num second
#1 2
#2 4
#3 2
#4 3
#5 2

#num third
#1 5
#2 3
#3 1
#4 1
#5 1
 
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

