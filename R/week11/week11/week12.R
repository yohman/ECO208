class <- read.csv("class.csv")
chiba <- read.csv("chiba11.csv")
summary(chiba)
str(chiba)
plot(chiba)
attach(chiba)
plot(rent,konro2)
plot(area,rent)

abline(lm(rent~area),col="red")

# plot linear
ggplot(chiba,aes(x=area,y=rent)) + 
  geom_point(size=5,shape=21,col="white",stroke=1.5,alpha=1,fill="blue")  + 
  geom_smooth(method = lm,col="red")

# plot logit
ggplot(chiba,aes(x=rent,y=konro)) + 
  geom_point(size=5,shape=21,col="white",stroke=1.2,alpha=1,fill="blue") +
  stat_smooth(method="glm",se=FALSE,method.args = list(family=binomial),col="red",lty=2)



# create logit model
model <- glm(konro~rent,family = binomial)
summary(model)

pred <- predict.glm(model,type=c("response"))

plot(rent,log(konro/(1-konro)))


# perform odds ration 
exp(coef(model))
chiba$konro2<-as.factor(chiba$konro)
##
## rent = 2.44 means that for a one unit increase in rent, the odds of having a konro is 2.44




model<-glm(konro2~rent,family = "binomial",data = chiba)
summary(model)

xtabs(~konro+rent,data=chiba)

ggpairs(chiba)

model <- lm(rent~.,chiba)

summary(model)

step(model)



str(class)
attach(class)
happiness

plot(class[c("happiness","study","work","hobby")])


plot(happiness,pk)

install.packages("GGally")
library(GGally)

ggpairs(class,columns = c("pk","happiness"))

model <- lm(happiness~work+sleep,class)
summary(model)

step(model)
