
- The data file `bob.csv` was accessed from [https://raw.githubusercontent.com/fivethirtyeight/data/master/bob-ross/elements-by-episode.csv](https://raw.githubusercontent.com/fivethirtyeight/data/master/bob-ross/elements-by-episode.csv)
on 2016-07-10.

- The data file `mov.csv` was accessed (and censored) from [https://raw.githubusercontent.com/fivethirtyeight/data/master/tarantino/tarantino.csv](https://raw.githubusercontent.com/fivethirtyeight/data/master/tarantino/tarantino.csv) on 2016-07-10, using the following code:

```
download.file("https://raw.githubusercontent.com/fivethirtyeight/data/master/tarantino/tarantino.csv",
destfile="tarantino.csv")
mov <- read.csv("tarantino.csv")
mov$word <- paste("word", as.numeric(as.factor(mov$word)), sep="_")
write.csv(mov, "mov.csv", row.names=FALSE)
```
