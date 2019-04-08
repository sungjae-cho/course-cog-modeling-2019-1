# Homework 4: Draw the Gompertz function
# Author: Sungjae Cho
# Date: 2019-04-08

a = 1
c = 1

t = seq(-10,10,0.1)

b = 1/4
y = a * exp(-b * exp(-c*t))
plot(t, y, type="n")
lines(t, y, col = "red")

b = 1
y = a * exp(-b * exp(-c*t))
lines(t,y, col = "blue")

b = 4
y = a * exp(-b * exp(-c*t))
lines(t,y, col = "green")

legend("topleft", legend=c("b=0.25", "b=1", "b=4"),
       col=c("red", "blue", "green"), lty=1, cex=0.8)
