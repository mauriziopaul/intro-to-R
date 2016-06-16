---
layout: post
title:  "Lesson 02 - Basic Operations"
categories: jekyll 
---

In this lesson we will focus on reading and handling data, and what you need to know in order to do so.

# Data types

1. Vectors
2. Matrices
3. Lists
4. Data frames

## Vectors

A vector is a one-dimensional list of values. The values in this list have a **type**: either **numeric**, **character**, **factor**, or **logical**. All values in a vector will have the same type (whether you want them to or not).

### Numeric vectors

All values in a vector are a number, or missing (`NA` or `NaN`).

```
> c(1, 2, 3, 4)
[1] 1 2 3 4
> c(1, 2, NA, 4.5)
[1] 1.0 2.0  NA 4.5
```

### Character vectors

All values in a vector are a string (or missing).

```
> c('VA', 'NC', 'SC')
[1] "VA" "NC" "SC"
> c('VA', 'NC', 'SC', 200)
[1] "VA"  "NC"  "SC"  "200"
```

(Strings can look like numbers to the human eye. R doesn't care that the 200 *could* be a number, because it's with a bunch of other strings. You can coerce strings to become numbers with the function `as.numeric`, e.g. `as.numeric("200")`.)

### Factors

Factors look like strings but have a specific function: to store different levels of a variable, such as experimental conditions.

```
> factor(c('M', 'F', 'M', 'F', 'M', 'F'))
[1] M F M F M F
Levels: F M
```

### Logical vectors

Vectors can be made up of logicals: `TRUE` and `FALSE` values.

```
> c(TRUE, TRUE, TRUE, FALSE)
[1]  TRUE  TRUE  TRUE FALSE
```

`TRUE` is not the same as `"TRUE"` or `"True"`. Special values such as `TRUE`, `FALSE`, `NA`, `NaN`, and `NULL` are case-sensitive and not placed in quotes.

## Matrices

Matrices are two-dimensional vectors. Like vectors, they can only contain one type of data.

You can create matrices with functions such as `matrix`, `rbind` (binds vectors as rows), and `cbind` (binds vectors as columns).

```
> mat <- rbind(c(7, 8, 9, 10), c(1, 2, 3, 4), c(-1, -2, -3, -4))
> mat
     [,1] [,2] [,3] [,4]
[1,]    7    8    9   10
[2,]    1    2    3    4
[3,]   -1   -2   -3   -4
```

You can extract single values, rows, columns, or matrices from a matrix.

```
> mat[1, 4]
[1] 10
> mat[1, ]
[1]  7  8  9 10
> mat[, 4]
[1] 10  4 -4
> mat[1:2, 2:4]
     [,1] [,2] [,3]
[1,]    8    9   10
[2,]    2    3    4
```

Matrices have their uses but data frames can contain more information.

## Lists

Lists are, well, lists of things. You can mix different data types in a list--you can have numeric values, strings, even data frames stored in a single list. They are versatile dumping grounds for information.

```
> l <- list(TRUE, 1, c(2, 3), 'four')
> l
[[1]]
[1] TRUE

[[2]]
[1] 1

[[3]]
[1] 2 3

[[4]]
[1] "four"
```

You can access elements of a list with double brackets, rather than single brackets such as for vectors and matrices.

```
> l[[3]]
[1] 2 3
```

## Data frames

Data frames store information!

For a data frame: Each row is an instance of an **observation** (such as a person, day, or flower), and each column is a **variable** (such as weight, temperature, or petal length). Each column has a name. Row names are optional (but personally, I do not like them).

R has some built-in data sets; let's look at one called `iris` now.

```
> head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
```

`head` gives you the first six rows of a data frame. Here, we see that there are four measurements for each flower, as well as an additional column for the species.

```
> str(iris)
'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
 $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```

`str` provides the structure of the data frame. The first four columns are numeric, and the last column is a factor.

Here, though, we can't see what the third level of the Species factor is! Fortunately, we can extract individual columns from a data frame. And unfortunately, there are multiple ways to do this.

The best way is with the `$` operator: `iris$Species`.

```
> levels(iris$Species)
[1] "setosa"     "versicolor" "virginica" 
```

Other ways to perform the same operation are `iris[['Species']]`, `iris[, 'Species']`, and `iris[, 5]`.

---

# Reading data

## Text file formats

## Working directories

## read.table

### The ? operator and reading help files

---

# Debugging