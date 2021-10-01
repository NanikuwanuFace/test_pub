# 足し算
A <- 2
B <- 4
A*B

# 行列 c(x,y,z)で行列を表現
v <- c(2,4,6)
print(v[1:2])
print(v[1]*v[2])
print(v[1]*v[3])

#作業環境の変更
getwd()
setwd("D:/github/loacal_test_repo/R")

# データインポート
trucks <- read.csv("pickup.csv")
head(trucks)

# データの見方
trucks [1,] # 1行目
trucks [1:3,] # 1-3行目
trucks [1:3,1] # 1列目(year)の1-3行目
trucks [1:3,'year'] #1列目(year)の1-3行目

# サンプルサイズのカウント
nrow(trucks)

# 基本統計量
summary(trucks)

# ヒストグラム
hist(trucks$price)

# 箱ひげ図
boxplot(price ~ make, data=trucks)

# glm
fit <- glm(log(price) ~ make + miles + year, data=trucks)
summary(fit)






