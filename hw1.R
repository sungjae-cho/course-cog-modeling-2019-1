# Homework 1: Fitting data from Wixted & Ebbesen (1991) with a power function
# This code was given by the professor.
# power fitting using nls
#

library(stats)

x = c(2.5,5,10,20,40)
y = c(0.59, 0.52, 0.47, 0.41, 0.412)

nls.out <- nls(y~a*x^b,start = list(a=0.1,b=-0.1))

summary(nls.out)

plot(x,y,xlab="Retention Interval(s))",ylab="Proportion Recalled", xlim=c(0,50), ylim=c(0,1))
lines(x,predict(nls.out),lty=2,col="blue",lwd=3)
