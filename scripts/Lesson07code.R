library(ggplot2)


# plot the diamonds data set
ggplot(diamonds, aes(x=carat, y=price)) +
    geom_point()
ggplot(diamonds) +
    geom_point(aes(x=carat, y=price))
ggplot(diamonds, aes(x=carat, y=price)) +
    geom_point(aes(colour=color))


# plot economics time series
ggplot(economics, aes(x=date, y=unemploy)) +
    geom_line()

ggplot(economics, aes(x=date, y=unemploy)) +
    geom_line() +
    coord_cartesian(xlim=c(as.Date("2000-01-01"), as.Date("2015-04-01")))


# plot mammal data set
ggplot(msleep, aes(x=bodywt, y=brainwt)) +
    geom_point(aes(colour=vore))

ggplot(msleep, aes(x=bodywt, y=brainwt)) +
    geom_point(aes(colour=vore)) +
    scale_x_log10() +
    scale_y_log10()


# plot the midwest data set
ggplot(midwest, aes(x=percollege)) +
    geom_histogram()
ggplot(midwest, aes(x=percollege)) +
    geom_histogram(aes(fill=state))
ggplot(midwest, aes(x=percollege)) +
    geom_histogram(aes(fill=state), position='dodge')
ggplot(midwest, aes(x=percollege)) +
    geom_histogram(aes(fill=state), position='dodge', binwidth=5)
ggplot(midwest, aes(x=percollege)) +
    geom_histogram(aes(fill=state), position='dodge', binwidth=5) +
    labs(title='College attendance by state', x='Percent college')

ggplot(midwest, aes(x=percollege)) +
    geom_density(aes(fill=state))
ggplot(midwest, aes(x=percollege)) +
    geom_density(aes(fill=state), alpha=0.3)


# plot the iris data set
ggplot(iris, aes(x=Species, y=Sepal.Length)) +
    geom_boxplot()

ggplot(iris, aes(x=Species, y=Sepal.Length)) +
    geom_boxplot(outlier.color=NA) +
    geom_jitter(aes(colour=Species))




