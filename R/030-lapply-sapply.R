## Creates a sample list
mylist <- as.list(iris[1:3,1:3])
mylist
## Compute sum of each list component and return result 
# as list
lapply(mylist, sum)
## Compute sum of each list component and return result 
# as vector (the simplest form)
sapply(mylist, sum)
