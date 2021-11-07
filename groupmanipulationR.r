s## Question 1 ##
Heartcsv <- read.csv("/Users/prags/Downloads/Heart1.csv")
Heartcsv

## Q1.1. 
apply(X=Heartcsv, 2, FUN = mean)
#test: colMeans(Heartcsv)

## Q1.2.
lapply(X=Heartcsv, FUN=mean)
lapply(X=Heartcsv, FUN=sum)

## Q1.3.
sapply(X=Heartcsv, FUN=mean)
sapply(X=Heartcsv, FUN=sum)

## Q1.4.
lapply(X=Heartcsv[1], FUN = mean)
lapply(X=Heartcsv[2], FUN = mean)

## Question 2 ##
Heart2csv <- read.csv("/Users/prags/Downloads/Heart2.csv")

## Q2.1.
tapply(Heart2csv$Age, Heart2csv$Sex, mean)

## Q2.2.
tapply(Heart2csv$Chol, Heart2csv$Sex, mean)

## Q2.3.
tapply(Heart2csv$Age, Heart2csv$AHD, mean)

## Q2.4. 
aggregate(cbind(RestBP, Chol)~Sex, Heart2csv, sum)
