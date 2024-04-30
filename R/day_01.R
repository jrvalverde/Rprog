1

2 + 2

( -4 + sqrt( (4 * 4) - (4 * 2 * -6)) / (2 * 2) )

( -4 - sqrt( (4 * 4) - (4 * 2 * -6)) / (2 * 2) )

2 + 2 * 2

2 - 2 * 3

(2 + 2) * 2

(2 - 2) * 3

2 - (2 * 3)

3 / 2

2 ** 2

2 ** 3

3 ^ 2

4 * (3.1416 * ( (3.5 / 2) ** 2) ) 

4 * 3.1416 * ( ( 1.5 / 2) ** 2)

(4 / 3) * 3.1416 * ( (1.5 / 2) ^ 3 )

20 * ( 3.14159 * 10 * 10 )


pi <- 3.14159	# this is the preferred form
pi = 3.14159
pi

radius <- 10
height <- 20
pi <- 3.14159
base_area <- pi * radius ** 2
volume <- base_area * height
base_area
volume

radius <- 1.5 / 2
pi <- 3.14159
circle <- pi * (radius ^ 2)
surface <- 4 * circle
volume <- (4/3) * pi * (radius ^ 3)
surface
volume

x <- 1.2345

y <- 1.e-5

species_name <- 'Homo sapiens'

is.mammal <- FALSE

is.bacteria <- T


x <- 3 > 2
x
x = 3 == 2
x
x <- 3 == 4 & 3 < 4
x
x <- 3 == 4 | 3 < 4
x
x <- (3 == 4) & (3 < 4)
x

x <- 3 > 2 ; x
x = 3 == 2 ; x
x <- 3 == 4 & 3 < 4 ; x
x <- 3 == 4 | 3 < 4 ; x
x <- (3 == 4) & (3 < 4) ; x


vec <- c(1, 2, 3) ; vec

help(c)


help(c)
help(help)
help(seq)


c(1, 2, 3)


sqrt(); help(sqrt)


a <- c(1, 2, 3, 3, 2, 1)
b <- c(3, 4, 7, 7, 6, 4)
t.test(a, b, "two.sided", 0, FALSE, FALSE, 0.95)
t.test(a, b)
help(t.test)


t.test(a, b, "less", TRUE)
t.test(a, b, "less", paired=TRUE)
t.test(a, b, "less", var.equal=TRUE)


help(seq)


seq( )
seq(10)
seq(10, 20)
seq(from=10, to=20)
seq(10, 20, 2)
seq(from=10, to=20, by=2)
seq(by=2, to=20, from=10)


my_vector <- c(1, 2, 3, 4, 5, 
               1, 2, 3, 4, 5)
my_vector



my_vector + my_vector
my_vector

my_vector[ 5 ]
my_vector[ 5 ] + my_vector[ 6 ]


Long.vec <- c(
              c(1,2,3),
              c(4,5,6),
              c(7,8,9)
             )
Long.vec


v <- c("one", "two", "three")
length(v)

m <- c("v", 1, 2, 3)

m


vec <- c( seq(10, 20, 2) )

help(":")
0:20

help(rep)
rep(10, 5))


c( 1, 2, 3:10, seq(1, 10), rep(1, 10) )
c( rep( seq(1, 10, by=2), 2), 10:1)


c(1,2,3,4,5,1,2,3,4,5)
c(1:5, 1:5)
c(rep(1:5, 2))


seq(3)
rep( seq(3), c(1, 2, 3) )

help(rep)



x <- seq(3)
rep(x, c(1,2,3))
x[2]
x[ ]
x <- seq(10,100, 10)
x
3:5
x[3:5]
x [ c(1, 3, 5, 7, 9) ]
x [ seq(1, 9, 2) ]
x[ ]

v1 <- 1:10
v2 <- 5:15
v1 %in% v2
v2 %in% v2
v1[ v1 %in% v2 ]		# note the order
v2[ v2 %in% v1 ]

v1[ v2 %in% v1 ]  # study this


x [ -3 ]

x [ 0:-3 ] ; x [ -1:-3 ]

x [ -3:-5 ]


v <- 1:3
names(v) <-  c("Tom", "Dick", "Harry")
v
v["Dick"]


v <- c(1:10, NA, 11:20, NA)
is.na(v)
v[ is.na(v) ]
v[ ! is.na(v) ]
v <- v[ ! is.na(v) ]
v < 11
v[ v < 11 ]
v[ v > 10 ]


vals <- rnorm(n=100, mean=10, sd=3)
vals
print(vals)
plot(vals)
hist(vals)

seed(202405)


help(matrix)


vals <- c(1, 1, 1, 2, 2, 2, 3, 3, 3)
matrix(vals, 3, 3)

matrix(vals, 3, 3, byrow=T)
matrix(data=vals, nrow=3, ncol=3, byrow=TRUE)


col.1 <- c(1,1,1)
col.2 <- c(2,2,2)
col.3 <- c(3,3,3)
matrix(c(col.1, col.2, col.3), ncol=3, 
       nrow=length(col.1))
row.1 <- c(1,1,1)
row.2 <- c(2,2,2)
row.3 <- c(3,3,3)
matrix(c(row.1, row.2, row.3), nrow=3,
       ncol=length(row.1), byrow=T)
       

m <- matrix(1:9, 3, 3, byrow=T)
m
m[2, 3]


col.1 <- 1:3
col.2 <- rep(2, times=3)
col.3 <- 3:1
vals <- c(col.1, col.2, col.3)
m <- matrix(vals, ncol=3)


m[2, ]				# returns row number 2
m[ , 2]	    # returns column number 2

m[ , c(2,3)]
m[ , 2:3]
m[2:3, ]
m[2:3, 2:3]


is.numeric(3)
is.character(3)
is.character("3")
is.infinite(1 / 0)
is.na(NA)			# NA: not available
is.null(NULL)	# NULL: “no value here”


x <- seq(20)
x
x < 10			# what is the result of this?
selected <-  x < 10
selected # what does “selected” contain?
x[ selected ]
x [ x < 10 ]


m.1 <-  matrix(1:9, nrow=3)
m.2 <- matrix(9:1, nrow=3)
m.1 + m.2
m.2 + m.1

m.1 <-  matrix(1:9, nrow=3)
m.2 <- matrix(9:1, nrow=3)
m.1 - m.2
m.2 - m.1


m.1 <-  matrix(1:9, nrow=3)
m.2 <- matrix(9:1, nrow=3)
m.1 * m.2
m.2 * m.1

m1 <- matrix(1:24, ncol=4)   # 6x4
m2 <- matrix(1:32, nrow=4)   # 4x8
m1 %*% m.2					# 6x4 · 4x8 OK
m2 %*% m.1				  # 4x8 · 6x4 KO


m.1 %o% m.2
1:4 %o% 5:8

t(m.1)

crossprod(m.1, m.2)


m <- matrix(1:6, nrow=2, byrow=T)
m
rownames(m) ; colnames(m)
rownames(m) <- c("sane", "sick")
colnames(m) <- c("control", "placebo", 
                 "treated")
m
rownames(m) ; colnames(m)


data(iris)
help(iris)
print(iris)
head(iris)	# show only first rows
tail(iris)		# show only last rows
summary(iris)


height <- seq(150, 190, length.out=6)
weight <-  rnorm(n=6, mean=60, sd=10)
age <- runif(n=6, min=20, max=30)
sex <- rep(c("F","M"), c(3, 3))
data <- data.frame(height, weight, age, sex)
data


df = data.frame(
    name=c("Joe", "John", "James"),
    age=c(21, 22, 23),
    sex=rep("M", 3)
)
df


data[1, 3]
data[ ,"sex"]

data$sex
data$height


attach(data)
sex
data$sex

detach(data)


iris

summary(iris)

iris$Sepal.Width
iris$Petal.Length

table( iris$Species )


attach(iris)
shapiro.test(Sepal.Length)
bartlett.test(Sepal.Length ~ Species) 
# ~ means'by'
t.test(Sepal.Length[1:50], 
       Sepal.Length[51:100])
wilcox.test(Sepal.Length[1:50],
            Sepal.Length[51:100])
a <- aov(Sepal.Length ~ Species)
TukeyHSD(a)
detach(iris)


attach(iris)
shapiro.test(Sepal.Length)
bartlett.test(Sepal.Length ~ Species) 
# ~ means'by'
t.test(Sepal.Length[1:50], 
       Sepal.Length[51:100])
wilcox.test(Sepal.Length[ Species == "setosa"],
            Sepal.Length[ Species=="versicolor"])
a <- aov(Sepal.Length ~ Species)
TukeyHSD(a)
detach(iris)


hist( iris$Sepal.Length )
hist( iris$Sepal.Width )
hist( iris$Petal.Length )
hist( iris$Petal.Width )
boxplot( iris$Sepal.Length )

Plot one column against other
plot( iris$Sepal.Length,
      iris$Petal.Length )

plot( iris )


x <- seq(10)
y <- matrix(seq(10), nrow=5)
xylist <- list(x, y)
xylist

xylist[[1]]
xylist[[2]]


xylist = list(X = x, Y = y)
xylist[[1]]
xylist$X
xylist[[2]]
xylist$Y


# let us create two simple hypothetical data frames
ref <- data.frame(weight=c(10, 20, 30, 40),
              height=c(1.1, 2.2, 3.3, 4.4))
exp <- data.frame(weight=c(11, 22, 33, 44), 
              height=c(5.5, 6.6, 7.7, 8.8))
# and now apply the Kolmogorov-Smirnov test
weight.ks <- ks.test(ref$weight, exp$weight)
height.ks <- ks.test(ref$height, exp$height)
# str shows the structure of a variable
str(weight.ks)		
# the result of ks.test is a list, we can access its elements with, e.g.
weight.ks$p.value


str(weight.ks)		
weight.ks$p.value
# let us now create a list with the results
res <- list(w.ks=weight.ks, h.ks=height.ks)	
# res is a list of lists:
res[[1]]
# gives us w.k, and therefore we can use 
res[[1]]$p.value
# or to access h.k and its p.value (using $ notation)
res$h.ks
res$h.ks$p.value 


help(rnorm)
set.seed(1234)
x <- rnorm(100, 0, 1)
hist(x)
boxplot(x)
y <- 5 + 2 * x + rnorm(100, 0, 1) 
plot(x, y)
abline(5, 2)


m <- lm( y ~ x )
plot(m)

plot(x, y)
str(m)
m$coefficients		# m is a list
intercept <- m[[1]][ "(Intercept)" ]
slope <- m$coefficients[ "x" ]
abline(intercept, slope, col="red")
points(x, m$fitted.values, col="green")
title(paste("fit: y =", intercept,
            "+", slope, "* x"))


dev.copy(png, file='plot.png')
dev.off()

getwd()


# This will not show the graphic on 
# the screen
png("plot.png")
plot(x, y)
dev.off()


