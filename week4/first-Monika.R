# line(density(hist(x)))
# simple.freqpoly
# rug(jitter(data)) - слага отдолу наблюденията

breaks = seq(160, 200, 10)
# отворен интервал отдясно
# Прави интервали
Height_cut = cut(Height, breaks, right=TRUE)
hist(Height, breaks)
# по подразбиране хистограмата е ( ]
# right = FALSE, [ )

# Двумерни данни
table(Gender, HairColor)
# prop.table
# 1 - редове, 2 - колони

barplot(table(EyesColor, HairColor), beside = TRUE, legend.text = TRUE, col = rainbow(3))
barplot(table(Gender, HairColor), beside = TRUE)

# от едната страна жените, от другата страна мъжете
# ~
boxplot(AverageGrade~Gender)
