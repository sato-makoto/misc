#!/usr/bin/env Rscript

cpu0=read.table("bin_cpu0", header=T)
cpu1=read.table("bin_cpu1", header=T)
png(filename="make_binutils.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	cpu0$Time, cpu0$user, type="l", col="2",
        xlab="時間(秒)",
        ylab="負荷(%)",
	ylim=c(-5,105),
        main="configure and make binutils"
)
points(
	cpu1$Time, cpu1$user, type="l", col="3"
)
legend("topright",c("CPU0", "CPU1"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

