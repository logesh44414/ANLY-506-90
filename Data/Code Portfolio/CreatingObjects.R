a <- data.frame("sex" = c("f", "f", "m"),
                "age" = c(19, 22, 25),
                "favorite.movie" = c("Moon", "The Past", "Raid"))
b <- mean(a$age)

c <- table(a$sex)

save(a, b, c,
     file = "data/MyProject.RData")

ls()

club.df <- read.table(file = 'http://nathanieldphillips.com/wp-content/uploads/2015/12/club.txt',
                      sep = '\t',
                      header = TRUE)

write.table(x = club.df,
            file = "data/club.txt", 
            sep = "\t")

save.image(file = "data/myobjects.RData")

rm(list = ls())