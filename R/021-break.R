x <- 1:10
z <- c()    # create an empty vector
for(i in seq(along=x)) {
    if (x[i] <= 5) {
        z <- c(z, x[i])
    } else {
        cat("warning: 'x' values need to be <= 5\n")
        break
    }
}
print(z)
