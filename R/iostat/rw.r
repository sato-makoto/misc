#!/usr/bin/env Rscript

rs=read.table("sda_rs", header=T)
ws=read.table("sdb_ws", header=T)
png(filename="sda_rs_sdb_ws.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	rs$Time, rs$sda_rs, type="l", col="3",
        xlab="時間(秒)",
        ylab="r/s and w/s",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	ws$Time, ws$sdb_ws, type="l", col="2",
)
legend("topright",c("sda: r/s", "sdb: w/s"),
		pch = 15,
		col = c(3,2)
	)
warnings()
dev.off()

