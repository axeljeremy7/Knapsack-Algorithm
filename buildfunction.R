build1= read.csv("build1.csv",sep=",",header = F)

View(build1)
cn = c("size","time")
colnames(build1)=cn

ylm = lm(time~size,data=build1)
summary(ylm)
coef = ylm$coefficients
rse = ylm$residuals

plot(build1$size,build1$time,xlab = "Size", ylab = "Time",pch=21, main = "10000-1000000")
lines(build1$size,ylm$fitted.values, col="blue")
summary(ylm)

fit2=lm(time~poly(size,2,raw = T),data=build1)
summary(fit2)
plot(build1$size,build1$time,xlab = "Size", ylab = "Time",pch=21,main = "10000-1000000" )
lines(build1$size,fit2$fitted.values, col="red")
fit2$coefficients

fit3=lm(time~poly(size,3,raw=T),data=build1)
summary(fit3)
plot(build1$size,build1$time,xlab = "Size", ylab = "Time",pch=21, main = "10000-1000000")
lines(build1$size,fit3$fitted.values, col="yellow")
fit3$coefficients

fit4=lm(time~poly(size,4,raw = T),data=build1)
summary(fit4)
plot(build1$size,build1$time,xlab = "Size", ylab = "Time",pch=21,main = "10000-1000000" )
lines(build1$size,fit4$fitted.values, col="green")
fit4$coefficients
