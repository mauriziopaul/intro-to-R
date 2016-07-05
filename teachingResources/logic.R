characters <- data.frame(
    Person = c('Alexander Hamilton',
               'Elizabeth Schuyler Hamilton',
               'Aaron Burr',
               'Angelica Schuyler Church',
               'George Washington',
               'Thomas Jefferson'),
    Born = c(1755, 1757, 1756, 1756, 1732, 1743),
    Died = c(1804, 1854, 1836, 1814, 1799, 1826),
    Gender = c('Male', 'Female', 'Male', 'Female', 'Male', 'Male'),
    State = c('New York', 'New York', 'New York', 'New York',
              'Virginia', 'Virginia'),
    stringsAsFactors = FALSE
)



candidate <- 'John Adams'
if (candidate == 'Thomas Jefferson') {
    print('The election of 1800')
} else if (candidate == 'John Adams') {
    print('Welcome, folks, to the Adams administration')
} else if (candidate == 'George Washington') {
    print('Here comes the General')
} else {
    print('Never gonna be President now')
}

years <- c(NA, 1776, 1780, 1781, 1789, 1800)






