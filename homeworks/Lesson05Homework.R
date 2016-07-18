## HtLtC: An Introduction to R 2016
## Lesson 05 Homework

## 1. Using barplot, plot the number of words that occur in 
##    Django Unchained, which is 165 minutes long.

download.file(
	"http://mauriziopaul.github.io/intro-to-R/data/mov.csv",
	destfile="mov.csv")
mov <- read.csv("mov.csv")
m.sub.word <- subset(mov, movie=="Django Unchained" & type=="word")
m.sub.word$minute <- floor(m.sub.word$minutes_in)
datmat <- table(rep(0:164)) # also OK if you said 0:165
thiscount <- 0

for(i in 0:164){
	thiscount <- nrow(subset(m.sub.word, minute==i))
	datmat[names(datmat)==i] <- thiscount
}

barplot(datmat)

## 2. Run an anova test on the Petal.Length ~ Species in the iris data set.

data(iris)

fit <- lm(Petal.Length ~ Species, data=iris)

anova(fit)

# p < 2.2e-16


## 3. Let’s assume that the average number of goals scored in a World Cup 
##    football (soccer) match is 2.8, and the score per match follows 
##    a Poisson distribution. What is the probability that there will be 
##    4 goals scored in the next World Cup football match?

dpois(x=4, lambda=2.8)

# 15.57%
