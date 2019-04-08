# Written by Sungryong Koh
# Taylor's series of exp(x)
#

x = seq(-3,3,0.1)
y = exp(x)

y1 = 1+x
y2 = 1+x+(x^2)/2
y3 = 1+x+(x^2)/2+x^3/(2*3)
y4 = 1+x+(x^2)/2+x^3/(2*3)+x^4/(2*3*4)

plot(x,y)

lines(x,y1)
lines(x,y2,col="blue")
lines(x,y3,col="green")
lines(x,y4,lty = 2,col = "red")