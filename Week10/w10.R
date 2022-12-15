# 必要なパッケージをインストール
install.packages("tidyverse")
install.packages("car")
install.packages("GGally")

# ライブラリーをロード
library(ggplot2)
library(GGally)
library(car)

# import data
chiba <- read.csv("chiba10.csv")

# summarize
summary(chiba)

# some stats
str(chiba)

# attach
attach(chiba)

# check correlations
cor(chiba)

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
