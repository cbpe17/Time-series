set.seed(666)
x= arima.sim(list(order= c(0,1,1), ma =-0.8), n = 100)
(x.ima = HoltWinters(x, beta=FALSE, gamma=FALSE))
#??below is1?????
plot(x.ima)

plot(gnp)
acf2(gnp, 50)
gnpgr= diff(log(gnp))# growth rate
plot(gnpgr)
acf2(gnpgr, 24)
sarima(gnpgr, 1, 0, 0)# AR(1)
sarima(gnpgr, 0, 0, 2)# MA(2)
ARMAtoMA(ar=.35, ma=0, 10)# prints psi-weights