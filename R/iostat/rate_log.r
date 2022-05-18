#!/usr/bin/env Rscript

rate_a=read.table("arate", header=T)
rate_c=read.table("crate", header=T)
png(filename="rate_log.png", width=1024,height=768)
date = paste("作成日時: ", Sys.time())
#pdf(file="test.pdf")
default_mai = par()
mai = par()$mai
mai[4] = mai[1]
par(mai = mai, lwd=2)
options(
scipen=100
)
plot(
	rate_c$Time, rate_c$crate,
       	type="l", col="2", ylab="", xlab="測定回数",
	log="y",
#	ylim=c(1,900000000),
        main="ddrescue rate(log)"
)
mtext("current rate(byte,log)",
      side = 2,
      line = 2,
      col = 2,
      )
par(new = T)
plot(
	rate_a$Time, rate_a$arate,
	type="l", col="3",  axes=FALSE, xlab="", ylab="",
	log="y",
	)
axis(4)
line=2
mtext("average rate(byte, log)",
      side = 4,
      line = 2,
      col= 3,
      )
legend("topright",c("average rate", "current rate"),
		pch = 15,
		col = c(3,2)
	)
mtext(text=date, adj = 0)
par(mai = default_mai$mai)
warnings()
dev.off()

