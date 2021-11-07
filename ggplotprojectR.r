## importing ggplot library
library(ggplot2)

##reading csv file
movie <- read.csv("/Users/prags/Downloads/Movie-Ratings.csv")

#Question 1: descriptive stats
head(movie)
summary(movie)

#Question 2: changing column names
#test: colnames(movie)
colnames(movie) <- c("F","G","R","A","B","Y")
#test: colnames(movie)

#Question 3: visualize R & A with regression lines and points
ggplot(data=movie, aes(x=R, y=A))
ggplot(data=movie, aes(x=R, y=A)) + geom_abline() + geom_point()

#Question 4: different colors for different genres
ggplot(data=movie, aes(x=R, y=A, color=G)) + geom_abline() + geom_point()

#Question 5: boxplots for R and A wrt G with different colors for each genre
ggplot(data=movie, aes(x=R, y=G, color=G)) + geom_boxplot()
ggplot(data=movie, aes(x=A, y=G, color=G)) + geom_boxplot()


