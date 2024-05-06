mydf <- iris
# seq(along=...) 1:n along the values in...
for(i in seq(along=mydf$species)) {
    cat("value", i, "is", mydf[i,1], '\n')
}
