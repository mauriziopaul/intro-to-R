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

songs <- c('Alexander Hamilton', 'Aaron Burr, Sir', 'My Shot',
           'The Story Of Tonight', 'The Schuyler Sisters', 
           'Farmer Refuted', "You'll Be Back", 'Right Hand Man',
           "A Winter's Ball", 'Helpless', 'Satisfied',
           'The Story of Tonight - Reprise', 'Wait For It',
           'Stay Alive', 'Ten Duel Commandments', 'Meet Me Inside',
           'That Would Be Enough', 'Guns and Ships',
           'History Has Its Eyes On You',
           'Yorktown (The World Turned Upside Down)', 'What Comes Next?',
           'Dear Theodosia', 'Non-Stop')

president <- 'John Adams'
if (president %in% characters$Person) {
    print('in data frame')
} else {
    print('not in data frame')
}


year <- 1776
if (year < 1776) {
    america <- FALSE
} else {
    america <- TRUE
}
america


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




