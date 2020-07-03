#!/usr/bin/env Rscript

rs=read.table("sda_rs", header=T)
ws=read.table("sdb_ws", header=T)
png(filename="sda_rs_sdb_ws_long.png", width=10240,height=768)
#pdf(file="test.pdf")
plot(
	ws$Time, ws$ws, type="l", col="3",
        xlab="時間(秒)",
        ylab="r/s and w/s",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	rs$Time, rs$rs, type="l", col="2"
)
legend("topright",c("r/s", "w/s"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

