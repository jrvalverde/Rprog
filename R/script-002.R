# R comes with a number of standard datasets for us to try
# we will make use of one of them in this script
# iris gives the measurements in centimeters of the variables 
#      sepal length and width and petal length and width, 
#      for 50 flowers from each of 3 species of iris.
data(iris)

dim(iris)	# get the dimensions of the data set
names(iris)	# get the column (variable) names
row.names(iris) # get the row names

# test for normality
shapiro.test(iris$Petal.Length)	
# test for homogeneity of variances
bartlett.test(Petal.Length ~ Species, data=iris)
# draw a Q-Q normality plot
with(iris, qqnorm(Petal.Length, ylab="Petal length"))
qqline(iris$Petal.Length)
