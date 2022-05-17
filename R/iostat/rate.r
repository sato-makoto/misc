#!/usr/bin/env Rscript

rate_a=read.table("arate", header=T)
rate_c=read.table("crate", header=T)
png(filename="rate.png", width=1024,height=768)
date = paste("作成日時: ", Sys.time())
#pdf(file="test.pdf")
options(
scipen=100
)
plot(
	rate_c$Time, rate_c$crate, type="h", col="2",
        xlab="時間(秒)",
        ylab="rate",
#	log="y",
#	ylim=c(1,900000000),
        main="ddrescue rate"
)
par(new = T)
plot(
	rate_a$Time, rate_a$arate,type="h", col="3", ylab="", 
	)
axis(4)
mtext("average",
      side = 4,
      line = 5,
      )
legend("topright",c("average rate", "current rate"),
		pch = 15,
		col = c(3,2)
	)
mtext(text=date, adj = 0)
warnings()
dev.off()

