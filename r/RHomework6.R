################
# R Homework 6 # 
# Alvaro Muir  #
################
par(mfrow=c(1, 1))

## Question 1 ##

x <- seq(0,9,1)
y <- c(130, 115, 110, 90, 89, 89, 95, 100, 110, 125)

result1 <- lm(y~x)
result2 <- lm(y~x + I(x^2))
result3 <- lm(y~x + I(x^2) + I(x^3))
result4 <- lm(y~x + I(x^2) + I(x^3) + I(x^4))

y1 <- result1[[1]][2] * x^1 + result1[[1]][1]
y2 <- result2[[1]][3] * x^2 + result2[[1]][2] * x^1 + result2[[1]][1]
y3 <- result3[[1]][4] * x^3 + result3[[1]][3] * x^2 + result3[[1]][2] * x^1 + result3[[1]][1]
y4 <- result4[[1]][5] * x^4 + result4[[1]][4] * x^3 + result4[[1]][3] * x^2 + result4[[1]][2] * x^1 + result4[[1]][1]

J1 <- sum( (y1-y)^2)
J2 <- sum( (y2-y)^2)
J3 <- sum( (y3-y)^2)
J4 <- sum( (y4-y)^2)

S1 <- sum( (y1-mean(y))^2 )
S2 <- sum( (y2-mean(y))^2 )
S3 <- sum( (y3-mean(y))^2 )
S4 <- sum( (y4-mean(y))^2 )

rSquare1 = 1 - (J1/S1)
rSquare2 = 1 - (J2/S1)
rSquare3 = 1 - (J3/S1)
rSquare4 = 1 - (J4/S1)


par(mfrow=c(2,2))
plot(x, y, xlab="Time(min)", ylab="Additive(oz)", main="FirstDegree")
points(x, y1, type="l")
plot(x, y, xlab="Time(min)", ylab="Additive(oz)", main="Second Degree")
points(x, y2, type="l")
plot(x, y, xlab="Time(min)", ylab="Additive(oz)", main="Third Degree")
points(x, y3, type="l")
plot(x, y, xlab="Time(min)", ylab="Additive(oz)", main="Fourth Degree")
points(x, y4, type="l")


QoC <-data.frame(c(J1, J2, J3, J4), c(S1, S2, S3, S4), c(rSquare1, rSquare2, rSquare3, rSquare4))
colnames(QoC) <- list("J", "S", "r2")


## Question 2 ##

x <- c(20, 30, 40, 50, 60, 70)
y <- c(45, 80, 130, 185, 250, 330)

result <- lm(y~x + I(x^2) + I(x^3) + I(x^4))
y <- result[[1]][5] * x^4 + result[[1]][4] * x^3 + result[[1]][3] * x^2 + result[[1]][2] * x^1 + result[[1]][1]
J <- sum( (y-y)^2)
S <- sum( (y-mean(y))^2 )
rSquare = 1 - (J/S)

par(mfrow=c(1,1))
plot(x,y,xlab="Speed",ylab="Distance",main="Quadatic Polynomial")
points(x,y,type="l")

QoC <-data.frame(J, S, rSquare)
colnames(QoC) <- list("J", "S", "r2")


## Question 3 ##

x <- seq(1, 10, 1)
y <- c(26.1, 27.0, 28.2, 29.0, 29.8, 30.6, 31.1, 31.3, 31.0, 30.5)

result1 <- lm(y~x)
result2 <- lm(y~x + I(x^2))
result3 <- lm(y~x + I(x^2) + I(x^3))

y1 <- result1[[1]][2] * x^1 + result1[[1]][1]
y2 <- result2[[1]][3] * x^2 + result2[[1]][2] * x^1 + result2[[1]][1]
y3 <- result3[[1]][4] * x^3 + result3[[1]][3] * x^2 + result3[[1]][2] * x^1 + result3[[1]][1]


par(mfrow=c(1,3))
plot(x, y, xlab="Time(sec)", ylab="Pressure(psi)", main="FirstDegree")
points(x, y1, type="l")
plot(x, y, xlab="Time(sec)", ylab="Pressure(psi)", main="Second Degree")
points(x, y2, type="l")
plot(x, y, xlab="Time(sec)", ylab="Pressure(psi)", main="Third Degree")
points(x, y3, type="l")


## Question 4 ##
tempc <- c(300, 150, 75, 35, 12, 5, 2)
times <- seq(0,6, 1)


par(mfrow=c(2,2))
plot(times, tempc, type="l", xlab="Time(s)", ylab="Temerature(°C)")
plot(log10(times), log10(tempc), type="l")
plot(times, log10(tempc), type="l")




## Question 5 ##
blife <- c(28, 21, 15, 11, 8, 6, 4)
tempf <- seq(100, 220, 20)

par(mfrow=c(2,2))
plot(blife, tempf, type="l", xlab="Bearing Life", ylab="Temerature(°F)")
plot(log10(blife), log10(tempf), type="l")
plot(blife, log10(tempf), type="l")
