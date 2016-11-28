x = runif(100)
hist(x, probability = TRUE)
curve(dunif(x, 0, 1), add = TRUE)

### Бернулиево - в R го няма, тъй като е частен случай на Биномното

y = rbinom(1, 1, 0.5)

# нормално rnorm, dnorm, qnorm

#6.1
rm(x)
x = runif(10, 0, 10)
max(x)
min(x)

#6.2 
rm(x)
x = rnorm(10, mean = 5, sd = 5)
length(x[x < 0])

#6.4
rm(x)
x = rbinom(50, 1, 0.5)
length(x[x==1])

#6.5
rm(x)
x = rbinom(100, 1, 1/6)
length(x[x==1])

#6.6
rm(x)
x = sample(1:49, 6, replace = FALSE)
max(x)
min(x)

#6.7
qnorm(0.05, 0, 1)

#6.8 ???

qnorm(0.005,0, 1)