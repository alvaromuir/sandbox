################
# R Homework 3 #
# Alvaro Muir  #
################


# 1
blowfly <-read.csv('./blowfly.txt')
nrow(blowfly)


# 2
goal     = 1000000
balance  = 10000
deposit   = 10000
interest = 0.06
years    = 0

while(balance <= goal) {
  balance = balance + deposit + (balance * interest)
  years = years + 1
}

balance

years

#3
worldfloras <- read.csv('./worldfloras.txt', sep='\t')
attach(worldfloras)
as.vector(Country[grep("^.{3}c",as.character(Country))])

#4
cone <- function(r, h) {
  V =((pi*r)*h)/3
  A = pi*r^((r^2)+ (h^2))
  return(A)
}


# 5
fact <- function(x) {
  if(x == 0) return(1)
  x * fact(x-1)
  return(x)
}


for(x in c(1:10)){
  print(c(x, fact(x)))
}

# 6

cells <- read.table('./cells.txt')
lapply(cells, class)

multivar <- read.table('./multivariate.txt')
lapply(cells, class)

cells <- read.table('./cells.txt', header=F, sep='\t', skip=1)> head(cells)
colnames(cells) <- c('Cell.Number', 'Smokes', 'Age.Range', 'Gender', 'Body.Weight')
head(cells)

multivar <- read.table('./multivariate.txt')
colnames(multivar) <- c('Temperature', 'Ind', 'Pop', 'Avg.Wind', 'Avg.Rain', 'Num.Wet.Days')
head(multivar)

write.table(cells, './cells_v2.txt', sep='\t')
write.table(multivar, './multivariate_v2.txt', sep='\t')

save(cells, file='./cells_df')
save(multivar, file='./multivariate_df')





