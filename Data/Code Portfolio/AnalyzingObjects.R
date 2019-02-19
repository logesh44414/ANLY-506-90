load(file = "data/myobjects.RData")

ls()

x <- c(12,7,3,2,54,-21,33,45,8,-5)

mean(x, trim = 0, na.rm = FALSE)

result.mean <- mean(x)
print(result.mean)

y1 <- 12
y2 <- 20
y3 <- 35

percent = y1/sum(y1 + y2 + y3)

result.percent <- percent
print(result.percent)

save.image(file = "data/myobjects.RData")
