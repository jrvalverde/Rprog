## Computes mean values of vector aggregates 
#  defined by a factor (i.e. by type)
for (i in 1:4) print(tapply(as.vector(iris[,i]), 
                      iris$Species, mean))

## The aggregate function provides related 
# functionality
aggregate(iris[,1:4], list(iris$Species), mean)
