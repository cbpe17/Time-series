#10.9
library(astsa)
ts.plot(AirPassengers)
ts.plot(log(AirPassengers))
ts.plot(diff(log(AirPassengers)))
data <- diff(log(AirPassengers), differences = 12)
ts.plot(diff(log(AirPassengers), differences = 12))
pacf(diff(log(AirPassengers), differences = 12))

sarima(xdata = log(AirPassengers), p = 0, d = 1, q = 1, P = 0, D = 1, Q = 1, S = 12)
#Seems normal and has uncorrelated residuals

sarima.for(xdata = log(AirPassengers), n.ahead = 24, p = 0, d = 1, q = 1, P = 0, D = 1, Q = 1, S = 12)

sarima(xdata = log(AirPassengers), p = 12, d = 1, q = 0, P = 1, D = 1, Q = 0, S = 12)
sarima.for(xdata = log(AirPassengers), n.ahead = 24, p = 12, d = 1, q = 0, P = 1, D = 1, Q = 0, S = 12)

#10.11
jj
ts.plot(jj)
ts.plot(log(jj))
#not stationary
ts.plot(diff(log(jj)))
#Not time-invariant variance
acf(diff(log(jj)))

sarima(xdata = log(jj), p = 0, d = 1, q = 1, P = 0, D = 1, Q = 1, S = 4)

