#!/usr/bin/env Rscript

# https://qiita.com/daifuku_mochi2/items/1361833a91936d9fc976
# を参考に試してみた

first = read.table("mydata1", header=T)
second = read.table("mydata2", header=T)
png(filename="mydata.png", width=1024,height=768)
date = paste("作成日時: ", Sys.time())

default_mai = par()
mai = par()$mai
mai[4] = mai[1] 
mai[2] = mai[2] + 0.1
par(mai = mai)

plot(
     first$No, first$Value,
     type = "l",
     ylab = "first",
     col = "blue",
     xlab = "No",
     main = "Random Numbers"
)

par(new = T)
plot(
     second$No, second$Value,
     type = "l",
     axes = FALSE,
     ylab = "",
     col = "red",
     xlab = ""
)

legend("topright", c("$RANDOM", "$RANDOM/10"), pch = 15, col = c("blue","red"))

axis(4)
mtext("second", side = 4, line = 2)
par(mai = default_mai$mai)
mtext(text = date, adj = 0)
warnings()
dev.off()
