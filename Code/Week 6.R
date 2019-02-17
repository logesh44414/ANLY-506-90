library(tidyverse) #> this is the core readr package
library(readr) #> provides a faster way to read .csv files

x <- 55:60
y <- 7:31

cbind(x, y) #> Create a matrix where x and y are columns

rbind(x, y) #> Create a matrix where x and y are columns

df <- data.frame("number" = c(1, 2, 3, 4, 5),
                     "height_in_cm" = c("168", "166", "187", "155", "190"),
                     "age" = c(23, 24, 34, 36, 38)) #> creates a dataframe

head(ChickWeight) #> shows top rows

tail(ChickWeight) #> shows last rows

View(ChickWeight) #> display as dataframe

pirates <- data.frame("name" = c("Astrid", "Lea", "Sarina", "Remon","Letizia", "Babice", "Jonas", "Wendy", "Niveditha", "Gioia"),
                      "sex" = c("f", "f", "f", "m", "f", "f", "m", "f", "f", "f"),
                      "age" = c(30,25,25,29,22,22,35,19,32,21),
                      "superhero" = c("Batman 	","Superman 	","Batman 	","Spiderman 	","Batman 	","Antman 	","Batman 	","Superman 	","Maggott 	","Superman"),
                      "tatoos" = c(11,15,12,5,65,3,9,13,900,0),
                      stringsAsFactors = FALSE) #> creates a dataframe

str(pirates) #> displays internal structure

pirates$Tatoos.Age <- c(0.37,0.60,0.48,0.17,2.95,0.14,0.26,0.68,28.13,0.00) #> tatoos per year values

write.csv(pirates,'pirates.csv',row.names = FALSE) #> save dataframe to csv with row.names = FALSE condition