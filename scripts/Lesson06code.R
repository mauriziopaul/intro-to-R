library(tidyr)
library(dplyr)


pop.estimates <- read.csv('data/CENSUS_POP_ESTIMATES.csv')

pop.estimates.tidy <- gather(pop.estimates, Year, EstPop,
    c(POPESTIMATE2010, POPESTIMATE2011, POPESTIMATE2012,
      POPESTIMATE2013, POPESTIMATE2014, POPESTIMATE2015))

pop.estimates.untidy <- spread(pop.estimates.tidy, Year, EstPop)

pop.estimates %>%
    gather(Year, EstPop,
           c(POPESTIMATE2010, POPESTIMATE2011, POPESTIMATE2012,
             POPESTIMATE2013, POPESTIMATE2014, POPESTIMATE2015)) %>%
    head

pop.estimates.tidy %>%
    separate(Year, into=c('temp', 'Year2'), sep=-5, convert=TRUE) %>%
    head

as_data_frame(pop.estimates.tidy)
pop.estimates.refined <- pop.estimates.tidy %>%
    as_data_frame %>%
    separate(Year, into=c('temp', 'Year2'), sep=-5, convert=TRUE) %>%
    select(SEX, AGE, Year2, EstPop)

pop.estimates.tidy %>%
    as_data_frame %>%
    separate(Year, into=c('temp', 'Year2'), sep=-5, convert=TRUE) %>%
    select(-c(CENSUS2010POP, ESTIMATESBASE2010, temp))

population.change <- pop.estimates %>%
    as_data_frame %>%
    mutate(EstimatedChange = POPESTIMATE2015 - POPESTIMATE2010) %>%
    select(SEX, AGE, EstimatedChange)
population.change %>%
    mutate(Country = 'United States')

pop.estimates.refined %>%
    filter(AGE == 999 & SEX == 0)

pop.estimates.refined %>%
    filter(SEX != 0 & AGE != 999) %>%
    group_by(SEX, Year2) %>%
    summarize(Total = sum(EstPop))

pop.estimates.refined %>%
    filter(SEX != 0 & AGE != 999) %>%
    group_by(SEX, Year2) %>%
    summarize(Count = n())

