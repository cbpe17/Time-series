#Opgaver til long-memory
#prelim
library(astsa)
library(arfima)
#plot
plot(arf)
#Den kunne godt være autoregressiv, og ikke stationary

#Correlation plots
acf(arf)
pacf(arf)
#tydelig AR

#Estimte parameters
model <- arfima(z = arf, order = c(1,0,0))
summary(model)

#d+e+f
ts.plot(diff(arf))
#looks stationary now
acf(diff(arf))
pacf(diff(arf))

library(forecast)
auto.arima(diff(arf))

#5.2
ts.plot(abs(nyse))
acf(abs(nyse))
#Bedste bud
arfima::arfima(z = abs(nyse), order = c(0,0,1))


