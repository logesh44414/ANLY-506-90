library(nycflights13) #> Flights that Departed NYC in 2013

library(tidyverse) #> this is the core readr package

library(lubridate) #> makes it simpler to work with dates and time

data("flights") 

flights %>%
  
  filter(!is.na(dep_time)) %>% #> filter by departure time
  
  filter(!is.na(arr_time)) %>% #> filter by arrival time
  
  select(year,month,day,hour,minute) %>% #> select by time range
  
  mutate(departure = make_datetime(year = 2000L, month = 1L, day = 1L, hour = 0L, min = 0L,
                                   sec = 0, tz = "UTC")) #> adds new variables and preserves existing