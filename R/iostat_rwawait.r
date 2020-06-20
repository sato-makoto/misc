#!/usr/bin/env Rscript

r_await=read.table("sda_r_await", header=T)
w_await=read.table("sdb_w_await", header=T)
png(filename="sda_r_await_sdb_w_await_long.png", width=10240,height=768)
#pdf(file="test.pdf")
plot(
	w_await$Time, w_await$w_await, type="l", col="3",
        xlab="時間(秒)",
        ylab="r_await or w_await",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	r_await$Time, r_await$r_await, type="l", col="2"
)
legend("topright",c("sda:r_await", "sdb:w_await"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

