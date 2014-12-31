################ 
# R Homework 2 # 
# Alvaro Muir  # 
################


#1: Evaluate the following expressions 
x = 5 + 8i
y = -6 + 7i

u = x + y
print(u)

v = x * y
print(v)

w = x / y
print(w)

z = exp(1) ^ x
print(z)

r = sqrt(y)
print(r)

s = (x*y)^2
print(s)



#2: Compute the following expressions
q2a = (3+6i)*(-7-9i)
print(q2a)

q2b = (5+4i) / (5-4i)
print(q2b)

q2c = 3 / 2i
print(q2c) 


#3: Calculate the following expressions
q3a = (exp(-2.1) ^ 3) + (3.47*log(14)) + (287 ^(1/4))
print(q3a)

q3b = (((3.7)^7)*log(14)) + (287 ^(1/4))
print(q3b)

q3c = cos(2)*((4.21*pi)/6)
print(q3c)

q3d = cos(((4.12*pi)^2)/6)
print(q3d)


# Find results of follwing, if x = 6
x = 6

z = (x<10)
print(z)

z = (x == 10)
print(z)

z = (x >= 4)

z = (x != 7)
print(z)

print(z)


#Find the results by hand
z = 6 > 3 + 8    # 6 > (11), False
print(z)

z = 6 + 3 > 8    # 11 > 8, True
print(z)

z = 4 > (2 + 9)  # 4 > 11, False
print(z)

z = (4 < 7) + 3  # True + 3, 4
print(z)

z = 4 < 7 + 3    # 4 < 11, True
print(z)

z = (4 < 7) * 5  # True * 5, 5
print(z)

z = 4 < (7 * 5)  # 4 < 35, True
print(z)

z = 2 / 5 >= 5   # (2/5) >= 5, False
print(z)


# 6 Enter matrix in R

a <- matrix(c(3,-5, 6, 15, 7, 9, 13, 5, -14, 10, 8, 4, 12, 2, 11, 1), nrow=4, ncol=4)
print(a)

# second column of a
v <- a[, 2]
print(v)

# second row of a
w <- a[2, ]
print(w)


#7: store 20 random numbers
q7 <- rnorm(20, mean=10, sd=5)

trim <- function(vect, numFront=0, numBack=0){
  return(sort(vect[(numFront + 1):(length(vect) - numBack)]))
}

print(trim(q7, 2, 2))


#8: Reading 'temperature.txt'
temperature_data <- read.table('./data/temperatures.txt', sep="\t", header=TRUE)

# Mean, temperature and rainfail
temp_rain_mean <- tapply(temperature_data$temperature, temperature_data$rain, mean)
print(temp_rain_mean)

# Max, temperature and rainfail
temp_rain_max <- tapply(temperature_data$temperature, temperature_data$rain, max)
print(temp_rain_max)

# Min, temperature and rainfail
temp_rain_min <- tapply(temperature_data$temperature, temperature_data$rain, min)
print(temp_rain_min)

# Standard deviation, temperature and rainfail
temp_rain_sd <- tapply(temperature_data$temperature, temperature_data$rain, sd)
print(temp_rain_sd)

# Variance, temperature and rainfail
temp_rain_var <- tapply(temperature_data$temperature, temperature_data$rain, var)
print(temp_rain_var)

# Range, temperature and rainfail
temp_rain_range <- tapply(temperature_data$temperature, temperature_data$rain, range)
print(temp_rain_range)


# 9: Calculate yearly average temp

temps_96_05 <- temperature_data[c(temperature_data$yr >= 1996 | temperature_data$yr >= 2005), ]
temperature_avgs <- tapply(temps_96_05$temperature, temps_96_05$month, mean)

coldest_month <- sort(temperature_avgs)[1]
print(coldest_month) # 1 7.996452

warmest_month <- sort(temperature_avgs)[length(temperature_avgs)]
print(warmest_month) # 8 23.37605


# Plot histogram

q10 <- rnorm(100, mean=50, sd=50)
hist(q10)

# get closest number to 100
> which(abs(q10-100) == min(abs(q10-100)))
[1] 48
> q10[48]
[1] 99.7617
