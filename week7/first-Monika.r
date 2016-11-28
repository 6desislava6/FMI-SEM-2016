x = runif(100)
hist(x, probability = TRUE)
curve(dunif(x, 0, 1), add = TRUE)
