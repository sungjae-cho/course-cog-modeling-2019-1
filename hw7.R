# Homework 7-2
# Plot two equations
# Author: Sungjae Cho
# Date: 2019-04-08


model <- function(t) {
  x = t - 1 + t^(-1) - t^(-2) / 2
  return(x)
}
t = seq(-30, -3, by=0.1) + seq(3, 30, by=0.1) 
x = model(t)
x = t - 1 + t^(-1) - t^(-2) / 2
plot(t, x, type="l")


model <- function(t) {
  x = t^2 - t / 2
  return(x)
}
t = seq(-30, 30, by=0.1)
x = model(t)
plot(t, x, type="l")
