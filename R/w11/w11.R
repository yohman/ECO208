# 必要なパッケージをインストール
install.packages("tidyverse")
install.packages("car")
install.packages("GGally")
install.packages("corrplot")

# ライブラリーをロード
library(ggplot2)
library(GGally)
library(car)
library(corrplot)

# import data
chiba <- read.csv("chiba11.csv")

# attach
attach(chiba)



# summarize
summary(chiba)

# some stats
str(chiba)

chiba$flooring <- as.factor(flooring)
chiba$konro <- as.factor(konro)
chiba$senmen <- as.factor(senmen)
chiba$autolock <- as.factor(autolock)
chiba$aircon <- as.factor(aircon)
chiba$bath_toilet <- as.factor(bath_toilet)
chiba$parking <- as.factor(parking)
chiba$corner <- as.factor(corner)


par(family = "HiraKakuProN-W3")

# check correlations
cor(chiba)

# plot
plot(chiba)

# which variables are significant to rent?

# better plot
ggpairs(chiba)

# easier to see with many variables
corrplot(cor(chiba))


# add regression line
ggpairs(chiba, lower = list(continuous = "smooth"))

# 3個の説明変数を使っての重回帰分析
model <- lm(rent ~ .,chiba)

model <- lm(rent~age+minutes+area+flooring)

# output model stats
summary(model)

step(model)
ggplot(chiba,aes(x=age,y=rent,color=aircon)) + geom_point()

ggplot()

# check for VIF
vif(model)

model <- lm(rent ~ age + minutes + area + flooring + konro + autolock + bath_toilet + 
              corner)
summary(model)
