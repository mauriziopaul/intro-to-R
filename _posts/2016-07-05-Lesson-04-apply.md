---
layout: post
title:  "Lesson 04 - Loops, logic, and (l)apply"
categories: jekyll 
---

---

* TOC
{:toc}

---

In this lesson we will cover logic, loops, and the apply family of functions in R--the nuts and bolts of coding in R.

## Logical comparisons

### if statements

"If statements" evaluate a logical expression, and if the logical expression is `TRUE`, execute code.

```
> president <- 'John Adams'
> if (president %in% characters$Person) {
+     print('in data frame')
+ }
```
```
> president <- 'Thomas Jefferson'
> if (president %in% characters$Person) {
+     print('in data frame')
+ }
[1] "in data frame"
```

### if / else if / else

Adding an `else` block after an if statement only runs if the statement is evaluated as `FALSE`.

```
> year <- 1776
> if (year < 1776) {
+     america <- FALSE
+ } else {
+     america <- TRUE
+ }
> america
[1] TRUE
```

If you have multiple conditions that you want to check sequentially, you can use `else if`, with or without an `else` statement at the end.

```
> candidate <- 'John Adams'
> if (candidate == 'Thomas Jefferson') {
+     print('The election of 1800')
+ } else if (candidate == 'John Adams') {
+     print('Welcome, folks, to the Adams administration')
+ } else if (candidate == 'George Washington') {
+     print('Here comes the General')
+ } else {
+     print('Never gonna be President now')
+ }
[1] "Welcome, folks, to the Adams administration"
```

You will probably not use if statements as often in R as you would in other languages, because R has many built-in commands to handle logical questions. However, you will use logic frequently.

### logical operations

The following operations all return `TRUE` or `FALSE`:

| Operation | Description | Example |
|-----------|-------------|---------|
| `==`      | equals      | `x == 5`  |
| `!=`      | does not equal | `x != 5` |
| `>`       | greater than | `x > 5` |
| `>=`      | greater than or equal to | `x >= 5` |
| `<`       | less than | `x < 5` |
| `<=`      | less than or equal to | `x <= 5` |
| `%in%`    | in          | `x %in% vec` |
| `!`       | not         | `! x %in% vec` |
| `&&`      | and (within an if statement) | `x > 4 && x < 6` |
| `||`      | or (within an if statement) | `x == 5 || x == 10` |

### Element-wise operations

In addition, you can perform element-wise logical operations, which return a logical vector as output. All of the above commands are the same, except for and/or, which are slightly different:

| Operation | Description | Example |
|-----------|-------------|---------|
| `&`       | and (elementwise) | `vec > 5 & vec < 10` |
| `|`       | or (elementwise) | `vec == 5 | vec == 10` |

The logical vector output from element-wise operations can be used to subset data:

```
> years[! is.na(years)]
[1] 1776 1780 1781 1789 1800
```

It can also be used with the `ifelse` function, which takes three arguments: a logical expression as the first argument, which returns the second argument for all `TRUE` values and the third argument for all `FALSE` values. For example:

```
> characters$Can.Vote <- ifelse(characters$Gender == 'Male', 'Yes', 'No')
> characters
                       Person Born Died Gender    State Can.Vote
1          Alexander Hamilton 1755 1804   Male New York      Yes
2 Elizabeth Schuyler Hamilton 1757 1854 Female New York       No
3                  Aaron Burr 1756 1836   Male New York      Yes
4    Angelica Schuyler Church 1756 1814 Female New York       No
5           George Washington 1732 1799   Male Virginia      Yes
6            Thomas Jefferson 1743 1826   Male Virginia      Yes
```

(Ladies, tell your husbands, vote for Burr!)

In addition, you can perform logical tests on logical vectors. The `any` command takes a logical vector and returns `TRUE` if any element is `TRUE`, and `FALSE` otherwise (e.g. `any(is.na(years))`). The `all` command is similar, except it returns true only if **all** elements are `TRUE`

What questions can you ask about the `years` vector?

## For loops

## The apply family of functions

### apply

### lapply

### sapply

### others: mapply, tapply, vapply

