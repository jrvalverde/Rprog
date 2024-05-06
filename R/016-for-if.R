x <- 1:10
seq(along=x)   # verify first that we do it right
z <- c()		      # start with 'z' empty: c()
for(i in seq(along=x)) {
    if (x[i] <= 5) {
        z[i] <- x[i]  # place x[i] after z
    } else {
        z[i] <-  0     # place zero after z
    }
}
print(z)
