################
# R Homework 4 #
# Alvaro Muir  #
################

## Question 1,
## Confused by question was this in lesson 4?


## Question 2

mu = 1152
sigma = 84
w1 = 1250

x <- seq(-3, 3, 0.01)
plot(x, dnorm(x), type="l")

z1 <- (w1 - mu) / sigma
z <- seq(z1, 3, 0.01)
p <- dnorm(z)
z <- c(z, 3, z1)
p <- c(p, 0, 0)

polygon(z, p, col="blue")

pAbove1250 <- 1.00 - pnorm(z1)
# [1] 0.1216725


w2 = 1200


x <- seq(-3, 3, 0.01)
plot(x, dnorm(x), type="l")

z1 <- (w2 - mu) / sigma
z <- seq(z1, 3, 0.01)
p <- dnorm(z)
z <- c(z, 3, z1)
p <- c(p, 0, 0)

polygon(z, p, col="green")
pUnder1200 <- 1.00 - pnorm(z1)



lb = 1000
ub = 1100
x <- seq(-3, 3, 0.01)
plot(x, dnorm(x), type="l")

z1 = (ub-mu)/sigma
z2 = (lb-mu)/sigma
z <- seq(z2, z1, 0.01)
p <- dnorm(z)
z <- c(z, z1, z2)
p <- c(p, 0, 0)
polygon(z, p, col="red")

p1000And1100 <- pnorm(z1) - pnorm(z2)

## Question 3
par(mfrow=c(1,1))
temperatures <- read.table('./temperatures.txt', header=T)
attach(temperatures)
month <- factor(month)
plot(month, temperature)


## Question 4

par(mfrow=c(3,3))

trials   <- 8
nsuccess <- 0:trials
varprobs <- seq(0.1, 0.9, by=0.1)

success_prob <- function(prob, trls, sxs){
  return(choose(trls, sxs)*prob*(1-prob)^(trials - sxs))
}

for(i in seq_along(varprobs)){
  px <- success_prob(varprobs[i], trials, nsuccess)
  barplot(px, names=nsuccess, main=paste("p = ",varprobs[i],", Trials = 8", sep=""), xlab="Trials", ylab="probability")
}



