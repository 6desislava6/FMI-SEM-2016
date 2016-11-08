smoking = sample(c("Y", "N"), 10, replace=TRUE)
smoking

table(smoking)
smoking = sample(c("Y", "N"), 10, replace=TRUE, prob=c(2, 1))
table(smoking)

table(smoking)/length(smoking) * 100
barplot(table(smoking))
table = table(smoking)
barplot(c(1, 2))

factor(smoking)
table(factor(smoking))
barplot(table(factor(smoking)))

barplot(table(smoking), main="Smoking questionaire", col=rainbow(2), horiz=TRUE)
pie(table(smoking), labels = c("y", "n"))


income = c(1, 1, 1, 1, 1, 1, 6, 6, 6, 1000)
mean(income)
median(income)
# Илюстрация как в случаите, в които имаме outliers, понякога е по-добре да
# ползваме медиана, а не средно.

sort(sample(1:100, 10, replace = TRUE))
fivenum(sort(sample(1:100, 10, replace = TRUE)))

