data <- read.table("proteomics.tab",
                   header=T, 
                   row.names=1)


data <- read.table("https://github.com/jrvalverde/Rprog/raw/main/data/proteomics.tab",
                   header=T, 
                   row.names=1)

head(data) ; str(data)

tdata <- t(data) 
shapiro.test(tdata[,1])

n.measures <- 312
for (i in 1:n.measures)  
    print( shapiro.test(tdata[ ,i]) )

for (i in 1:n.measures) {
    cat("Analyzing normality of measure", i, '\n')
    print(shapiro.test(tdata[ ,i]))
}

by.row <- 1
apply(data, by.row, shapiro.test)

for (i in 1:n.measures) {
    cat("Analyzing normality of variable", 
         i, '\n')
    st <- shapiro.test(tdata[ ,i])
    cat('   p.value =', st$p.value, '\n')
}

for (i in 1:n.measures) {
    st <- shapiro.test(tdata[ ,i])
    if (st$p.value >= 0.05)
        cat('measure', i, 'is normal\n')
}

for (i in 1:312) {
    wt <- wilcox.test(tdata[1:10 , i],
                      tdata[11:12, i)
    if (wt$p.value < 0.1)
        cat('measure', i, 'has a p.value',
            wt$p.value, '\n')
}

control <- 1:10		# rows 1..10
var.1 <- c("variant.1.A", "variant.1.B")
for (i in 1:n.measures) {
    wt <- wilcox.test(tdata[control ,i],
                      tdata[var.1, i)
    if (wt$p.value < 0.1)
        cat('measure', i, 'has a p.value',
            wt$p.value, '\n')
}

control <- 1:10		# rows 1..10
var.1 <- c("variant.1.A", "variant.1.B")
pvals <- c()
for (i in 1:n.measures) {
    wt <- wilcox.test(tdata[control ,i],
                      tdata[var.1, i])
    pvals <- c(pvals, wt$p.value)
}
print(pvals)

sort(pvals)

order(pvals)
in_order <- order(pvals)
pvals[in_order]

idx <- order(pvals)
# now sort all the columns (measures) using it
p.sorted.tdata <- tdata[ , idx]
# or rows in data
p.sorted.data <- data[idx, ]    

i <- 1
while p.val[i] > 0.1 {
    cat("P.value of measure", i, "is",
        p.val[i], '\n')
    i <- i + 1
}

i <- 1
col <- colnames(p.sorted.tdata)
while p.val[i] > 0.1 {
    cat("P.value of measure", col[i], "is", 
        p.val[i], '\n')
    i <- i + 1
}

by.row <- 1
by.column <- 2
apply(data, by.row, shapiro.test)

by.row <- 1
apply(data, by.row, 
      function(x) wilcox.test(x[1:10], x[1:11]))



