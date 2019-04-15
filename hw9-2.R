# Source: https://www.r-bloggers.com/a-plot-of-250-random-walks/

# Generate k random walks across time {0, 1, ... , T}
T <- 100
k <- 3
initial.value <- 0
GetRandomWalk <- function() {
  # Add a standard normal at each step
  initial.value + c(0, cumsum(sample(c(1, -1), T, replace=TRUE, prob=c(0.55,0.45))))
}
# Matrix of random walks
values <- replicate(k, GetRandomWalk())
# Create an empty plot
dev.new(height=8, width=12)
plot(0:T, rep(NA, T + 1), main=sprintf("%s Random Walks", k),
     xlab="time", ylab="value",
     ylim=10 + 4.5 * c(-1, 1) * sqrt(T))
mtext(sprintf("%s%s} with initial value of %s",
              "Across time {0, 1, ... , ", T, initial.value))
for (i in 1:k) {
  lines(0:T, values[ , i], lwd=0.25)
}

for (i in 1:k) {
  cat("Random-walk / k =", i, "\n")
  cat("Mean: ", mean(values[,i]), "\n")
  cat("Variance: ", var(values[,i]), "\n")
}
