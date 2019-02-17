library(nycflights13)
library(tidyverse)

filter(flights, month == 12, day == 30)
select(flights,dep_delay)
if (any(is.na(df[flights,dep_delay]))) {next}

sum(!is.na(x))

summarise(flights, delay = mean(dep_delay, na.rm = TRUE))
mean(s, na.rm = TRUE)
colMeans(b, na.rm = TRUE)
a <- filter(flights, month == 12, day == 30)
b <- select(a,dep_delay)
c <- select(b, na.rm = TRUE)
sum(!is.na(b))
summarise(mean = mean(c, na.rm = FALSE))

mean(b, na.rm = TRUE)

print(s)

s<-select(income,M_weekly)

f<-select(income,F_workers)
g <- select(f,na.rm = TRUE)
summarise(distance_sd = sd(g))
clear
sd(g)

sd(income[["F_workers"]])
iqr(income[["F_workers"]])
mad(income[["F_workers"]])

income <- as.tibble(income,na.rm = TRUE)
filter(income,M_weekly>'2000')
filter(M_weekly > 2000)

filter(income,M_weekly>2000,na.rm == TRUE)

round(641.967572,2)

colMeans(s, na.rm = TRUE)


library(matrixStats)

weighted_median <- function(x, w, ..., na.rm = FALSE){
  
  if(na.rm){
    
    df_omit <- na.omit(data.frame(x, w))
    
    return(weightedMedian(df_omit$x, df_omit$w, ...))
    
  } 
  
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