library(tidyverse) #> this is the core readr package
library(readr) #> provides a faster way to read .csv files

clustering_1 <- read_csv("C:/Users/loges/Downloads/DS/clustering_1.txt") #> reads the csv file
View(clustering_1) #> displays the csv file

read_csv("a1,b1,c1
         1a,2a,3a
         4x,5x,6x") #> inline csv

read_csv("a1,b1,c1
         1a,2a,3a
         4x,5x,6x", col_names = FALSE) #> don't treat first row as heading

str(parse_integer(c("24", "55", "37"))) #> changes vector to integer

