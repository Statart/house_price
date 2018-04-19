# setting
# setwd('E:/house_price')
setwd('C:/Users/twins/Desktop/KSB/Kaggle/house_price')
train.x <- read.table("train.csv", header=T, sep=",")[,-81]
train.y <- read.table("train.csv", header=T, sep=",")[81]
test.x <- read.table("test.csv", header=T, sep=",")
str(train.x)

# 변수의 개수가 너무 많다.
# 결측값 탐색
na <- round(apply(full, 2, function(x) sum(is.na(x))/nrow(full)), 4)
sort(na, dec=T)
# 결측률이 80%를 넘는 4가지 변수는 제외하는 것이 적절해 보인다.

full <- rbind(train.x, test.x)
full <- full[,na<0.8]
head(full)
