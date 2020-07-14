#!/usr/bin/env Rscript

cpu0=read.table("iowait_cpu0", header=T)
cpu1=read.table("iowait_cpu1", header=T)
cpu2=read.table("iowait_cpu2", header=T)
cpu3=read.table("iowait_cpu3", header=T)
png(filename="sar_iowait.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	cpu0$Time, cpu0$iowait, type="l", col="2",
        xlab="時間(秒)",
        ylab="iowait(%)",
	ylim=c(-5,105),
        main="ddrescue iowait"
)
points(
	cpu1$Time, cpu1$iowait, type="l", col="3"
)
points(
	cpu2$Time, cpu2$iowait, type="l", col="4"
)
points(
	cpu3$Time, cpu3$iowait, type="l", col="5"
)
legend("topright",c("CPU0", "CPU1", "CPU2", "CPU3"),
		pch = 15,
		col = c(2,3,4,5)
	)
warnings()
dev.off()

