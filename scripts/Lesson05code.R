## Code for Intro to R
## Lesson 05: Data Modeling

library(help = "stats")

dpois(x=2, lambda=1.5)

#----------------------------
# Poisson Example: Bad Words
#----------------------------
download.file(
	"http://mauriziopaul.github.io/intro-to-R/data/mov.csv",
	destfile="mov.csv")
mov <- read.csv("mov.csv")

m.sub.word <- subset(mov, movie=="Reservoir Dogs" & type=="word")

m.sub.word$minute <- floor(m.sub.word$minutes_in)

nrow(m.sub.word)

datmat <- table(rep(0:98))

for(i in 0:98){
	thiscount <- nrow(subset(m.sub.word, minute==i))
	datmat[names(datmat)==i] <- thiscount
}

nrow(subset(m.sub.word, minute==8))

mean(datmat)
range(datmat)
barplot(datmat)

barplot(table(m.sub.word$minute))

hist(datmat, xlim=c(0,16), breaks=15, xlab="rate per min")
hist(rpois(n=421, lambda=4.252525), xlim=c(0,16), breaks=10, xlab="rate per min")

dpois(x=5, lambda=4.252525)

#---------------------
# Other Distributions
#---------------------

bin <- rbinom(n=100,size=1,prob=0.5)
plot(bin, pch=16, ylim=c(-1,2))
hist(bin, breaks=2)

bin <- rbinom(n=100,size=1,prob=0.2)
plot(bin, pch=16, ylim=c(-1,2))
hist(bin, breaks=2)

mean(bin)

exp <- rexp(n=100, rate=5)
plot(exp, pch=16)
hist(exp)

#---------------
# Modeling Data
#---------------

#install.packages("beeswarm")

library("beeswarm")

iris.sub <- droplevels(subset(iris, 
	Species %in% c("setosa", "versicolor")))
plot(Sepal.Length ~ Species, data = iris.sub)
beeswarm(Sepal.Length ~ Species, data=iris.sub, add=TRUE, pch=16)

with(iris.sub, t.test(Sepal.Length[Species == 1], 
	Sepal.Length[Species == 2]))
t.test(Sepal.Length ~ Species, data = iris.sub)

t.test(Sepal.Length ~ Species, data = iris.sub, paired=TRUE)

plot(Sepal.Length ~ Species, data = iris)
beeswarm(Sepal.Length ~ Species, data=iris, add=TRUE, pch=16)

fit <- lm(Sepal.Length ~ Species, data=iris)
fit

fit0 <- lm(Sepal.Length ~ Species - 1, data=iris)
fit0

anova(fit)
summary(aov(fit))

anova(fit0)

TukeyHSD(aov(fit))

data(warpbreaks)
beeswarm(breaks ~ wool * tension, data=warpbreaks, pch=16)
boxplot(breaks ~ wool * tension, data=warpbreaks, add=TRUE)

wbfit <- lm(breaks ~ wool * tension, data=warpbreaks)

wbfit0 <- lm(breaks ~ wool, data=warpbreaks)
wbfit1 <- lm(breaks ~ wool + tension, data=warpbreaks)
wbfit2 <- lm(breaks ~ wool * tension, data=warpbreaks)

anova(wbfit1, wbfit0)
anova(wbfit2, wbfit1)

wbfit0a <- lm(breaks ~ tension, data=warpbreaks)
wbfit1 <- lm(breaks ~ wool + tension, data=warpbreaks)
anova(wbfit1, wbfit0a)
wbfit <- lm(breaks ~ 1, data=warpbreaks)

wbfit <- lm(breaks ~ ., data=warpbreaks)

qqnorm(iris$Sepal.Length)
qqline(iris$Sepal.Length)

qqnorm(iris$Sepal.Width)
qqline(iris$Sepal.Width)

qqnorm(iris$Petal.Length)
qqline(iris$Petal.Length)

qqnorm(iris$Petal.Width)
qqline(iris$Petal.Width)

