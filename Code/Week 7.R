library(nycflights13)
library(tidyverse)

filter(flights, month == 12, day == 30) #> filter data
select(flights,dep_delay) #> select data
if (any(is.na(df[flights,dep_delay]))) {next} #> if condition

sum(!is.na(x)) #> sum function

summarise(flights, delay = mean(dep_delay, na.rm = TRUE)) #> summarize results
mean(s, na.rm = TRUE) #> computes average
colMeans(b, na.rm = TRUE)
a <- filter(flights, month == 12, day == 30) #> variable a
b <- select(a,dep_delay) #> variable b
c <- select(b, na.rm = TRUE) #> variable c
sum(!is.na(b)) #> sum function
summarise(mean = mean(c, na.rm = FALSE)) #> summarize results

mean(b, na.rm = TRUE) #> computes average

print(s) #> prints the variable

s<-select(income,M_weekly)

f<-select(income,F_workers)
g <- select(f,na.rm = TRUE)
summarise(distance_sd = sd(g))
clear
sd(g) #> calculates standard deviation

sd(income[["F_workers"]])  #> calculates standard deviation
iqr(income[["F_workers"]]) #> calculates interquartile range
mad(income[["F_workers"]]) #> calculates mean absolute deviation

income <- as.tibble(income,na.rm = TRUE)
filter(income,M_weekly>'2000')
filter(M_weekly > 2000)

filter(income,M_weekly>2000,na.rm == TRUE)

round(641.967572,2) #> rounds off value to 2 decimal places

colMeans(s, na.rm = TRUE)


library(matrixStats) #> package contains functions used to work with columsn and rows (matrices and vectors)

weighted_median <- function(x, w, ..., na.rm = FALSE){
  
  if(na.rm){
    
    df_omit <- na.omit(data.frame(x, w))
    
    return(weightedMedian(df_omit$x, df_omit$w, ...))
    
  }  #> calcuates weighted median
  
  weightedMedian(x, w, ...)
  
} 

d<-weightedMedian(income[["industry"]], income[["M_weekly"]],na.rm = FALSE)


library(dplyr)
library(mtcars)

f <- select(mtcars,mpg)
g <- select(f,na.rm = TRUE)
summarise(distance_sd = sd(g))
clear
sd(g)

sd(f)
iqr(f)
mad(mtcars[["F_workers"]])