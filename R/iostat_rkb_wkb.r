#!/usr/bin/env Rscript

rkB_s=read.table("sda_r", header=T)
wkb_s=read.table("sdb_w", header=T)
png(filename="sda_r_sdb_w_long.png", width=10240,height=768)
#pdf(file="test.pdf")
plot(
	wkb_s$Time, wkb_s$wkB_s, type="l", col="3",
        xlab="時間(秒)",
        ylab="rkB or wkB(s)",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	rkB_s$Time, rkB_s$rkB_s, type="l", col="2"
)
legend("topright",c("rkB/s", "wkB/s"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

