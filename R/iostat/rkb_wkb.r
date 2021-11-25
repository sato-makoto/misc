#!/usr/bin/env Rscript

rkB_s=read.table("sda_rkB_s", header=T)
wkB_s=read.table("sdb_wkB_s", header=T)
png(filename="sda_r_sdb_w.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	wkB_s$Time, wkB_s$sdb_wkB_s, type="l", col="2",
        xlab="時間(秒)",
        ylab="rkB or wkB(s)",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	rkB_s$Time, rkB_s$sda_rkB_s, type="l", col="3",
)
legend("topright",c("sda: rkB/s", "sdb: wkB/s"),
		pch = 15,
		col = c(3,2)
	)
warnings()
dev.off()

