#!/usr/bin/env Rscript

rareq=read.table("sda_rareq", header=T)
wareq=read.table("sdb_wareq", header=T)
png(filename="sda_rareq_sdb_wareq.png", width=1024,height=768)
date = paste("作成日時: ", Sys.time())
#pdf(file="test.pdf")
plot(
	rareq$Time, rareq$sda_rareq, type="l", col="3",
        xlab="時間(秒)",
        ylab="rareq or wareq",
#	ylim=c(-5,105),
        main="ddrescue iostat rwreq"
)
points(
	wareq$Time, wareq$sdb_wareq, type="l", col="2",
)
legend("topright",c("sda: rareq-sz", "sdb: wareq-sz"),
		pch = 15,
		col = c(3,2)
	)
mtext(text=date, adj = 0)
warnings()
dev.off()

