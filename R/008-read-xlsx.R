install.packages("xlsx", dependencies=TRUE)
library(xlsx)
cherry <- read.xlsx(file.choose(), sheetIndex=1)
head(cherry)
cherry
plot(cherry)
summary(cherry)
