View(cmort)
acf2(rec, 48)# will produce values and a graphic
(regr= ar.ols(rec, order=2, demean=FALSE, intercept=TRUE))
regr$asy.se.coef# standard errors of the estimates
ar2 <- ar.ols(rec, order=2, demean=FALSE, intercept=TRUE)

fore= predict(ar2, n.ahead=4)
ts.plot(rec, fore$pred, col=1:2, xlim=c(1970,1990), ylab="Recruitment")
U= fore$pred+fore$se;  L = fore$pred-fore$se
xx= c(time(U), rev(time(U)));yy = c(L, rev(U))
polygon(xx, yy, border=8, col= gray(.6, alpha=.2))
lines(fore$pred, type="p", col=2)


