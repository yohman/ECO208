# 必要なパッケージをインストール
install.packages("tidyverse")
install.packages("car")
install.packages("GGally")

# ライブラリーをロード
library(ggplot2)
library(GGally)
library(car)

# import data
chiba <- read.csv("chiba20.csv")
covid <- read.csv("covid.csv")
attach(covid)
# summarize
summary(covid)

# some stats
str(covid)

cor(covid[,c(2:13)])
cor(covid[2:13])

ggpairs(covid[2:13])
# attach
attach(chiba)

par(family = "HiraKakuProN-W3")
# check correlations
cor(covid)

# plot
plot(chiba)

# better plot
ggpairs(chiba)

# add regression line
ggpairs(chiba, lower = list(continuous = "smooth"))

# 3個の説明変数を使っての重回帰分析
model <- lm(rent ~ age + minutes + area)

# output model stats
summary(model)

# check for VIF
vif(model)
