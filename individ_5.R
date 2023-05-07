library("psych")# описательные статистики 
library("lmtest") # тестирование гипотез в линейных моделях 
library("ggplot2")# графики 
library("dplyr") # манипуляции с данными

install.packages("psych")
install.packages("lmtest")
install.packages("ggplot2")
install.packages("dplyr")

help(ability.cov)
d<-ability.cov
glimpse(d) 

head(d)

describe(d)

qplot(data = d, dist, xlab = "Длина тормозного пути (футы)", 
      ylab = "Число авто х")

hist(d$dist, probability = TRUE, col="grey")


x<-d$generalpicture
y<-d$bloсk
plot(x,y,col="blue")


glimpse(d) 
head(d)
describe(d)

plot(x,y,col="blue")
