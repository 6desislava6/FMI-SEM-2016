install.packages("UsingR")
library("UsingR")
# с първото инсталираме, с второто зареждаме данните

data(south)
crime
hist(crime$y1993)
boxplot(crime$y1993)

# Защо ни интересува дали разпределението е симетрично
# медиана, средно
# Щати, в които средната престъпност е по-малка
sum(crime$y1993 < mean(crime$y1993))

# При асиметричните разпределения имаме Outlier-и, които дърпат средното към себе си
# за да намалим влиянието на outlier-ите, използваме медиана
# тя е по-устойчива срещу outlier
# Но средното е по-добро за локация, т.к. има по-ниска дисперсия.
median(crime$y1993)

smokes = c("Y","N","N","Y","N","Y","Y","Y","N","Y")
# Колко учат на седмица
amount = c(1,2,2,3,3,1,2,1,3,2)
table(smokes,amount)
# В проценти
table(smokes,amount)/length(smokes) * 100

# в реда да е 100%
prop.table(table(smokes, amount), 1)
# в колоната да е 100%
prop.table(table(smokes, amount), 2)

# второто определя колонките
barplot(table(smokes, amount), legend=TRUE)
barplot(table(amount, smokes), legend=TRUE)

#разделя стълбовете на малки стълбчета едно до друго
barplot(table(amount, smokes), legend=TRUE, beside=TRUE)

#едновременно прави 2 box plot-а.
x = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9)
y = c(11, 8, 4, 5, 9, 5, 10, 5, 4, 10)
boxplot(x,y)
# размахът на x е по-голямо
obs = c(x, y)
# вектор, който държи информация всяко наблюдение от коя група е:
gr = c(rep(1, 10), rep(2, 10))
boxplot(obs~gr)
# ~ променливата obs зависи функционално от gr

x = rnorm(500)
y = rexp(500, 1/20)
hist(x)
hist(y)
boxplot(x, y)

# нормиране на променлива
# от всяко вадим средното и делим на стандартното отклонение
scale(x)
scale(x[1:100])

# x[n, m] <- елемент, x[n,], x[,m]
# така вече не ни пречи разликата в мащабите
boxplot(scale(x)[,1], scale(y)[,1])


plot(crime$y1983, crime$y1993)
