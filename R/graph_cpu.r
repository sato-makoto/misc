#!/usr/bin/env Rscript

cpu0=read.table("bin_cpu0", header=T)
cpu1=read.table("bin_cpu1", header=T)
cpu2=read.table("bin_cpu2", header=T)
cpu3=read.table("bin_cpu3", header=T)
png(filename="apt_install.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	cpu0$Time, cpu0$user, type="l", col="2",lwd="2",
        xlab="時間(秒)",
        ylab="user(%)",
	ylim=c(-5,105),
        main="sar -P ALL 1 apt install"
)
points(
	cpu1$Time, cpu1$user, type="l", col="3", lwd="2",
)
points(
	cpu2$Time, cpu2$user, type="l", col="4", lwd="2",
)
points(
	cpu3$Time, cpu3$user, type="l", col="5", lwd="2",
)
legend("topright",c("CPU0", "CPU1", "CPU2", "CPU3"),
		pch = 15,
		col = c(2,3,4,5)
	)
warnings()
dev.off()

