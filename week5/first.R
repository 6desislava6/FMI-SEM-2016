# 25стр.
data(home)
attach(home)
x = old 
y = new
#y = x + rnorm(100, 0, 1)
#rnorm function to produce the random data
plot(x, y)
abline(lm(y~x))
cor(x, y) # връща колко е корелацията
# корелация на Spearman
cor(rank(x), rank(y))
# гласове за президент
# head дава първите 6 реда!
head(florida)
florida$BUSH
attach(florida)
# така атрибутите на florida стават видими променливи
cor(BUSH, BUCHANAN)
plot(BUSH, BUCHANAN)
cor(rank(BUSH), rank(BUCHANAN))
abline(lm(BUCHANAN~BUSH))

# даваме ѝ кои са ни осите
# тя ще ни иска да ѝ покажем точка
identify(BUSH, BUCHANAN)
# показва кое подред наблюдение е (онази горната в случая е номер 50) (след като сме натиснали esc)
# връща всичко без 50-ия O.o
BUSH[-50]
cor(BUSH[-50], BUCHANAN[-50])
# вече и корелацията на Pearson е висока

plot(BUSH[-50], BUCHANAN[-50])
abline(lm(BUCHANAN[-50]~BUSH[-50]))
cor(rank(BUSH[-50]), rank(BUCHANAN[-50]))

attach(mammals)
plot(body, brain)
cor(body, brain)
identify(body, brain)
#plot(body[c(-19, -3)], brain[c(-19, -3)])
# ВАЖНО! Сега вече виждаме линейната зависимост:
plot(log(body), log(brain))

# Задача 4.6
data("emissions")
head(emissions)
attach(emissions)
plot(perCapita, CO2)
cor(perCapita, CO2)
cor(rank(perCapita), rank(CO2))
identify(perCapita, CO2) # -> 1, 7
plot(perCapita[c(-1, -7)], CO2[c(-1, -7)])
identify(perCapita[c(-1, -7)], CO2[c(-1, -7)])
cor(perCapita[c(-1, -7)], CO2[c(-1, -7)])
abline(lm(CO2[c(-1, -7)]~perCapita[c(-1, -7)]))

#4.9