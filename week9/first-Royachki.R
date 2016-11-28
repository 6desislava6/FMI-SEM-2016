# x ~ Bi(35, 0.7)
# Искаме P(21 < x <= 30) = P(22 <= x <= 30) = 77

pbinom(30, 35, 0.7) - pbinom(21, 35, 0.7)
sum(dbinom(22:30, 35, 0.7))

plot(dbinom(0:35, 35, 0.7))

qpois(0.483, 4)
ppois(4, 4)
ppois(3, 4)
plot(dpois(1 ,4))


curve(dnorm(x, 0, 1), -4, 4)

pnorm(qnorm(0.36, 0, 1))

# P(Z > 1)
1 - pnorm(1, 0, 1)

pnorm(1, 0, 1, lower.tail = FALSE)
qnorm(0.35)

area = pnorm(0.1, 0, 1) + 0.2
qnorm(area)

1 - pexp(5, 5)


runif(10, 0, 10)

