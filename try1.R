a1 = read.csv("out11.csv",header = F)
View(a1)
colnames(a1)= c("size","time")
ylm = lm(time~size,data=a1)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21, main = "10000-1000000")
lines(a1$size,ylm$fitted.values, col="red")
summary(ylm)
ylm$coefficients

fit2=lm(time~poly(size,2,raw = T),data=a1)
summary(fit2)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21,main = "10000-1000000" )
lines(a1$size,fit2$fitted.values, col="green")
fit2$coefficients

fit3=lm(time~poly(size,3,raw=T),data=a1)
summary(fit3)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21, main = "10000-1000000")
lines(a1$size,fit3$fitted.values, col="yellow")
fit3$coefficients

fit4=lm(time~poly(size,4,raw = T),data=a1)
summary(fit4)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21,main = "10000-1000000" )
lines(a1$size,fit4$fitted.values, col="brown")
fit4$coefficients

fit5=lm(time~poly(size,5,raw = T),data=a1)
summary(fit5)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21,main = "10000-1000000" )
lines(a1$size,fit5$fitted.values, col="purple")
fit5$coefficients


x = a1$size
y = a1$time
plot(x,y)
p1 = 0.00001
fit1 = nls(y~p1*x*log2(x),start = list(p1=p1))
summary(fit1)
new1 = data.frame(xdata = seq(min(x),max(x),len=100))
lines(new1$xdata, predict(fit1,newdata = new1), col="blue",main = "10000-1000000" )

plot(x,y)
p1 = 0.00001
p2 = 0.00001
p3 = 0.00001
fit11 = nls(y~p1*x*log2(x) - p2*x - p3*log2(x) ,start = list(p1=p1,p2=p2,p3=p3))
summary(fit11)
new1 = data.frame(xdata = seq(min(x),max(x),len=100))
lines(new1$xdata, predict(fit11,newdata = new1), col="blue",main = "10000-1000000" )

ylm2= lm(time~I(size*log2(size) - size - log2(size)),data=a1)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21, main = "10000-1000000")
lines(a1$size,ylm2$fitted.values, col="blue")
summary(ylm2)
ylm2$coefficients

ylm3= lm(time~I(size*log2(size)),data=a1)
plot(a1$size,a1$time,xlab = "Size", ylab = "Time",pch=21, main = "10000-1000000")
lines(a1$size,ylm3$fitted.values, col="green")
summary(ylm3)
ylm3$coefficients

