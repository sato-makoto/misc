#!/usr/bin/env Rscript

util_a=read.table("util_a", header=T)
util_b=read.table("util_b", header=T)
png(filename="util.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	util_a$Time, util_a$util, type="l", col="2",
        xlab="時間(秒)",
        ylab="util(%)",
#	ylim=c(-5,105),
        main="ddrescue iostat util"
)
points(
	util_b$Time, util_b$util, type="l", col="3",
)
legend("topright",c("util(sda)", "util(sdb)"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

