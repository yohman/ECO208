library(ggplot2)
library(GGally)


chiba <- read.csv("chiba10.csv")
summary(chiba)
str(chiba)
attach(chiba)

# chiba$flooring <- as.factor(chiba$flooring)
# chiba$konro <- as.factor(chiba$konro)
# chiba$senmen  <- as.factor(chiba$senmen)
# chiba$autolock  <- as.factor(chiba$autolock)
# chiba$aircon  <- as.factor(chiba$aircon)
# chiba$bath_toilet  <- as.factor(chiba$bath_toilet)
# chiba$parking  <- as.factor(chiba$parking)
# chiba$corner  <- as.factor(chiba$corner)

plot(chiba)

# chiba_mini <- chiba[,c("rent","age","minutes","area","flooring","bath_toilet")]

# ggpairs(chiba_mini, lower = list(continuous = "smooth"),aes(color=bath_toilet,alpha=0.5))
ggpairs(chiba, lower = list(continuous = "smooth"))

attach(chiba_mini)
model_rent_age <- lm(rent~age)
summary(model_rent_age)

# multiple regression on all 3 independent variables
model <- lm(rent ~ age + minutes + area)



summary(model)

# check each iv's relationships
lm(age~minutes)


# check for vif
library(car)
vif(model)
cor(chiba1)

model2 <- lm(chiba1$rent~chiba1$minutes+chiba1$size+chiba1$age)
vif(model2)
car::vif(model)
vif(model)

library(PerformanceAnalytics)
chart.Correlation(chiba)
ggpairs(chiba, lower = list(continuous="smooth"),params=list(corSize=12))

help("wrap", package="GGally")
        