x <- c( 1:7, 7:1)
z <- c()
for(i in seq(along=x)) {
    if (x[i] <= 5) {
        z <- c(z, x[i])
    } 
}
