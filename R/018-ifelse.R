# from 1 to 7 and vice versa
x <- c( 1:7, 7:1 )
# if x <= 5, the result is x,
# otherwise, it is 0
z <- ifelse(x <= 5, x, 0)
