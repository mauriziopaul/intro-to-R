library(tidyr)
library(dplyr)


### Question 1 ###

pop.estimates <- read.csv('data/CENSUS_POP_ESTIMATES.csv')
pop.estimates.refined <- gather(pop.estimates, Year, EstPop,
         c(POPESTIMATE2010, POPESTIMATE2011, POPESTIMATE2012,
           POPESTIMATE2013, POPESTIMATE2014, POPESTIMATE2015)) %>%
    separate(Year, into=c('temp', 'Year2'), sep=-5, convert=TRUE) %>%
    select(SEX, AGE, Year2, EstPop) %>%
    as_data_frame

# one option
pop.estimates.refined %>%
    mutate(Gender = factor(SEX, labels=c('All', 'Male', 'Female')))

# another option
pop.estimates.refined %>%
    mutate(Gender = ifelse(SEX == 0, 'All',
                           ifelse(SEX == 1, 'Male', 'Female')
    ))

# a third option
gender.vec <- c('All', 'Male', 'Female')
pop.estimates.refined %>%
    mutate(Gender = gender.vec[SEX + 1])


### QUESTION 2 ###

df1 <- data.frame(
    Letter = c('A', 'C', 'E', 'G'),
    n1 = c(7, 8, 9, 10),
    stringsAsFactors=FALSE
)
df2 <- data.frame(
    Letter = c('A', 'B', 'C', 'D'),
    n2 = c(1, 2, 3, 4),
    stringsAsFactors=FALSE
)

inner_join(df1, df2)
left_join(df1, df2)
right_join(df1, df2)
full_join(df1, df2)


