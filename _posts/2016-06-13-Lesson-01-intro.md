---
layout: post
title:  "Lesson 01 - Getting Started with R"
categories: jekyll 
---

---

* TOC
{:toc}

---

We will be using RStudio for all of the R lessons.  You should first install ```R``` (or preferably update your current ```R``` installation), and then install ```RStudio```.

---

## Install R

### Windows

1. Download R-3.2.5-win.exe, or the latest version, from this site: [R for Windows][r-for-windows].
2. Run the downloaded executable (double click and follow instructions).
3. R is now available in your Program Files folder.

### Mac

1. Download R-3.3.0.pkg, or the latest version, from this site: [R for Mac][r-for-mac].
2. Run the downloaded package (double click and follow instructions).
3. R is now available in your Applications folder.


---

## Install RStudio

1. Download RStudio Desktop Installer from this site: [RStudio link][r-studio].
a. Mac: RStudio 0.99.902 - Mac OS X 10.6+ (64-bit), or latest/appropriate version
b. Win: RStudio 0.99.902 - Windows Vista/7/8/10, or latest/appropriate version
2. Run the downloaded package (double click and follow instructions).
3. RStudio is now available in your Applications or Program Files folder.



---

## Exploring R

### What is R?

R was developed by Robert Gentleman and Ross Ihaka from the Statistics Department in 1990’s, in New Zealand, for use in statistical computing.

### Evaluating R

R was developed to allow users to engage with it **interactively** as well as for users to **develop programs** and packages that can be added to the open source repositories, for anyone to use.  

| **Advantages**       					| **Disadvantages** |
| Open-Source					   	| Packages are of varying quality |
| Academic/professional community	| Very different from other standards [^standards] |
| High-quality visualization	 	| Less intuitive plotting |
| Multi-dimensional/large-scale data analysis	| Memory (RAM) use is not the best |
| Extensive documentation			| Overwhelming / disparate references |
| There are many ways to do the same thing | There are many ways to do the same thing |


Let's run have everyone start RStudio from their Applications/Programs folder.

---

### R is a Scientific Calculator

You can follow along by starting in the lower left-hand corner of your RStudio session. This is the **console**, where you can code _interactively_.
  
```
> 1+1
```

The carat, ```>```, indicates the beginning of a line where you have entered some code, in this case an **operation**.

After you are done typing, press enter, and below it should be the **result**. You can ignore the ```[1]``` for now, and just look at what follows.

```
[1] 2
```

Try something else:

```
> 5*3
[1] 15
```

Many other basic operations are available:[^log]

[^log]: Note that the ```log()``` function defaults to _natural_ log, a.k.a. "ln", or ```log(..., base=exp(1))```. You might mistake it for ```log10```, or ```log(..., base=10)```.


```
> 4/3
[1] 1.333333

> 10^2
[1] 100

> 10e2
[1] 1000

> log(1)
[1] 0
```

That last expression uses some operator with parentheses, which indicates that you are using a **function**. [^function]

[^function]: We will discuss functions and what you put inside the parentheses later. Parentheses can also be used to group operations.

Sometimes the instruction you give does not make sense to ```R```.

```
> log(-1)
[1] NaN
Warning message:
In log(-1) : NaNs produced
```

See that we have received output, ```[1] NaN```, as well a warning message below it describing the situation. When something goes wrong, **R** will give you **warnings**, and **errors** which are more ``severe.'' [^segfault] We will go over **troubleshooting** these warnings and errors later.

[^segfault]: And hopefully not too many **segfaults** -- segmentation faults, which would cause the program to fail or **crash**.

If you practice some of these operations, at this [website][r-operations] or [video][r-operations-video], you can learn to use **R** to do basic calculations in your day to day work.

[r-operations]: https://stat.ethz.ch/R-manual/R-devel/library/base/html/Arithmetic.html
[r-operations-video]: https://www.youtube.com/watch?list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU&v=UYclmg1_KLk

Suppose you want to use a letter or word (let's call it a **variable**) to represent a number or other type of **object** (such as a string of letters, a function, etc.), so that you can easily reference the object. You can **assign** the object to the letter or word using the ```<-``` operation.

It works like this: **variable <- object**

We will be doing a whole lot of this, but we introduce it quickly here. Start by creating a variable named ```myvar```, and assign a value:

```
> myvar <- 25
```

Now, when you type ```myvar``` into the console, it gives you output equal to the value you assigned to it:

```
> myvar
[1] 25
```

Suppose you wanted to ask what the value of $25x25$ is, you could type:

```
> myvar * myvar
[1] 625
> myvar^2
[1] 625
```

You can then assign that operation to a new variable, ```myvar1```:

```
> myvar1 <- myvar^2
> myvar1
[1] 625
```


---

### R is a Tool for Statistical Analysis

---

### R is a Tool for High-Quality Plots 

---

### R is a Tool for Reproducible Research

---

## Review


---

## Sources

Some of this lesson is based on the online notes for [this course][r-intro-kbroman], and from [this book][r-for-data-sci].

---

## Reference Texts for Learning R
- [R for Data Science][r-for-data-sci], by Roger Peng
- [simpleR][simpleR], by John Verzani
- [A Beginner's Guide to R][beginner-R], by Alain F. Zuur, Elena N. Ieno, and Erik Meesters
- [The Art of R Programming][art-of-R], by Norman Matloff


[^standards]: These differ based on your research field: SASS, SPSS, Matlab, Python, GraphPad Prism, etc.

[r-intro-kbroman]: https://www.biostat.wisc.edu/~kbroman/Rintro/Rmac.html
[r-for-windows]: http://cran.us.r-project.org/bin/windows/base/
[r-for-mac]: http://cran.us.r-project.org/bin/macosx/ 
[r-studio]: https://www.rstudio.com/products/rstudio/download/


[r-for-data-sci]: https://leanpub.com/rprogramming 
[simpleR]: https://cran.r-project.org/doc/contrib/Verzani-SimpleR.pdf
[beginner-R]: http://link.springer.com/book/10.1007%2F978-0-387-93837-0
[art-of-R]: http://site.ebrary.com/lib/uncch/detail.action?docID=10513550
