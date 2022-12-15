# import data
chiba <- read.csv("chiba11.csv")

# inspect data
summary(chiba)

# attach
attach(chiba)

# plots
plot(chiba)

chiba$aircon <- as.factor(aircon)

# model
model <- lm(rent~aircon,data=chiba)

# summary
summary(model)

plot(rent,aircon)

attach(chiba)
summary(chiba)
chiba$flooring
flooring

# add regression line
abline(reg=model,col='red')

# start multiple regression
cor(chiba)

model <- lm(rent~minutes+age+area2)
summary(model)

plot(chiba)

# library
library(GGally)
ggpairs(chiba)

# vif
library(car)
vif(model)
cor(area,area2)
p