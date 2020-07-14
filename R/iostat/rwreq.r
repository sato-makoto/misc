#!/usr/bin/env Rscript

rareq=read.table("sda_rareq", header=T)
wareq=read.table("sdb_wareq", header=T)
png(filename="sda_rareq_sdb_wareq.png", width=1024,height=768)
#pdf(file="test.pdf")
plot(
	wareq$Time, wareq$wareq, type="l", col="3",
        xlab="時間(秒)",
        ylab="rareq or wareq",
#	ylim=c(-5,105),
        main="ddrescue iostat"
)
points(
	rareq$Time, rareq$rareq, type="l", col="2"
)
legend("topright",c("sda:rareq-sz", "sdb:wareq-sz"),
		pch = 15,
		col = c(2,3)
	)
warnings()
dev.off()

