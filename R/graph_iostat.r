#!/usr/bin/env Rscript

rkB_s=read.table("rkB_s", header=T)
wkb_s=read.table("wkB_s", header=T)
png(filename="boot_win10.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	rkB_s$Time, rkB_s$rkB_s, type="l", col="2",
        xlab="時間(秒)",
        ylab="負荷(%)",
#	ylim=c(-5,105),
        main="boot win10 on libvirt"
)
points(
	wkb_s$Time, wkb_s$wkB_s, type="l", col="3"
)
legend("topright",c("rkB/s", "wkB/s"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

