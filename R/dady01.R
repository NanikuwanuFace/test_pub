# 01_不確実性####

#作業環境の変更####
getwd()
setwd("D:/github/loacal_test_repo/R/BDS/examples")

# データインポート####
trucks <- read.csv("pickup.csv")
head(trucks)

browser <- read.csv("web-browsers.csv")
dim(browser)
head(browser)
###################################################
# 平均####
mean(browser$spend)
hist(browser$spend, breaks = 1000,xlim=c(0,20000))

# 標本分散####
br_n = nrow(browser)
var(browser$spend)/br_n

# ノンパラメトリックブートストラップ####
B <- 1000 # ブートストラップ回数
mub <- c() # 標本平均ベクトル
for (b in 1:B){
  samp_b <- sample.int((nrow(browser)), replace=TRUE)
  mub <- c(mub, mean(browser$spend[samp_b]))
  }
sd (mub)

sort(samp_b)[1:10]
