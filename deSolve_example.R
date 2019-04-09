# deSolve example
# source: http://desolve.r-forge.r-project.org/

library(deSolve)
library(scatterplot3d)

## Chaos in the atmosphere
# [System equations]
# dX/dt <-  a * X(t) + Y(t) * Z(t)
# dY/dt <-  b * (Y(t) - Z(t))
# dZ/dt <- -X(t) * Y(t) + c * Y(t) - Z(t)

Lorenz <- function(t, state, parameters) {
  with(as.list(c(state, parameters)), {
    dX <-  a * X + Y * Z
    dY <-  b * (Y - Z)
    dZ <- -X * Y + c * Y - Z
    list(c(dX, dY, dZ))
  })
}

parameters <- c(a = -8/3, b = -10, c = 28)
state      <- c(X = 1, Y = 1, Z = 1)
times      <- seq(0, 100, by = 0.01)

out <- ode(y = state, times = times, func = Lorenz, parms = parameters)

plot(out)
scatterplot3d(out[,-1], type = "l")
