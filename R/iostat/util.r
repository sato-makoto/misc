#!/usr/bin/env Rscript

util_a=read.table("sda_util", header=T)
util_b=read.table("sdb_util", header=T)
png(filename="util.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	util_a$Time, util_a$sda_util, type="l", col="3",
        xlab="時間(秒)",
        ylab="util(%)",
#	ylim=c(-5,105),
        main="ddrescue iostat util"
)
points(
	util_b$Time, util_b$sdb_util, type="l", col="2",
)
legend("topright",c("sda util(%)", "sdb util(%)"),
		pch = 15,
		col = c(3,2)
	)
warnings()
dev.off()

