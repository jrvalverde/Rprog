z <- c()    # create an empty vector
for(i in seq(along=x)) {
    if (x[i] <= 5) {
        z <- c(z, x[i])
    } else {
        stop("values need to be <= 5")
    }
}
print(z)
