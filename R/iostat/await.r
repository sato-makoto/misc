#!/usr/bin/env Rscript

r_await=read.table("sda_r_await", header=T)
w_await=read.table("sdb_w_await", header=T)
png(filename="sda_r_sdb_w_await.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	r_await$Time, r_await$sda_r_await, type="l", col="2",
        xlab="時間(秒)",
        ylab="await(ms)",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	w_await$Time, w_await$sdb_w_await, type="l", col="3",
)
legend("topright",c("sda: r_await", "sdb: w_awiat"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

