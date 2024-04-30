data(iris)
dim(iris)
names(iris)
row.names(iris) 
with(iris, qqnorm(Petal.Length,
     ylab="Petal length"))
qqline(iris$Petal.Length)
shapiro.test(iris$Petal.Length)
bartlett.test(Petal.Length ~ Species, 
              data=iris)
