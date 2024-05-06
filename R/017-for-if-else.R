x <- 1:10
z <- c()		      # create an empty vector
for(i in seq(along=x)) {
    print(i)
    if (x[i] <= 5) {
        z[i] <- x[i]
    } else {
        z[i] <- 0
    }
    print(z)
}
