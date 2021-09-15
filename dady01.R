# 足し算
A <- 2
B <- 4
A*B

# 行列 c(x,y,z)で行列を表現
v <- c(2,4,6)
print(v[1:2])
print(v[1]*v[2])
print(v[1]*v[3])

# データインポート
cd ("D:\github\loacal_test_repo\R")
trucks = read.table( file = "D:\github\loacal_test_repo\R\pickup.csv", header=T, sep = ",", stringsAsFactors = F )
head(trucks)