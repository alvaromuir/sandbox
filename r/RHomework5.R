################
# R Homework 5 # 
# Alvaro Muir  #
################


### Question 2
A <- matrix(c(4, 7, 6,-2, 8, 9, 1,-5,10), 3)
B <- matrix(c(6, 7,-8, 9, 5, 2,-4, 3, 1), 3)
C <- matrix(c(-4,10,3,-5, 6,-9, 2, 1, 8), 3)

q2a <- A*(B+C) == A*B + A*C
q2b <- (A*B)*C == A*(B*C)


### Question 4
a <- 2
b <- 18
x <- runif(1000)
q4 <- (b-a) * x + 4
mean(q4)
## [1] 11.93369
summary(q4)
## Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 4.016   8.005  12.220  11.930  15.720  19.990 

hist(q4)


### Question 5
q5 <- rnorm(1000, 20, 4)
summary(q5)
mean(q5)
## [1] 19.97015
sd(q5)
## [1] 4.02304
summary(q5)
## Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 6.815  17.380  20.010  19.970  22.770  31.540

hist(q5)
