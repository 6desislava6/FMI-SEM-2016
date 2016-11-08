data = read.csv("SoftwareEngineering.csv")
attach(data)
barplot(ftable(Gender, HairColor, EyesColor), beside = TRUE, col=rainbow(10), legend=TRUE)

