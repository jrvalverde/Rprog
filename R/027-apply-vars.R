by.row <- 1 ; by.column <- 2
means <- apply( iris[ ,1:4], by.column, 
                mean)
print(means)

medians   <- apply( iris[ ,1:4], by.column, 
                    median)
variances <- apply( iris[ ,1:4], by.column, 
                    var)
medians ; variances ; variances ^ 0.5 # sd
