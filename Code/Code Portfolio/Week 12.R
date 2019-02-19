library(tidyverse) # this is the core readr package
library(cluster)    # clustering algorithms
library(factoextra) # clustering algorithms & visualization

set.seed(4565) # function to compute total within-cluster sum of square
x <- rnorm(13, mean = rep(1:4, each = 5), sd = 0.1) # x variable 
y <- rnorm(13, mean = rep(c(1, 3, 1), each = 5), sd = 0.1) # y variable 
plot(x, y, col = "red", pch = 20, cex = 2.2) #plot function

dataFrame <- data.frame(x, y) # defines the data frame
kmeansObj <- kmeans(dataFrame, centers = 2) # k means clustering function

df <- USArrests
df <- na.omit(df)
df <- scale(df)
head(df)

# Dissimilarity matrix
d <- dist(df, method = "euclidean")

# Hierarchical clustering using Complete Linkage
hc1 <- hclust(d, method = "ward.D" )

clusterplot(k='10')

# Ward's method
hc5 <- hclust(d, method = "ward.D2" )

# Cut tree into 4 groups
sub_grp <- cutree(hc5, k = 10)
table(sub_grp)

hc2 <- agnes(df, method = "single")