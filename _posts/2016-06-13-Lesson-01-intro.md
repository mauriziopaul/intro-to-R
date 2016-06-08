---
layout: post
title:  "Lesson 01 - Getting Started with R"
categories: jekyll 
---

---

* TOC
{:toc}

---

We will be using RStudio for all of the R lessons.  You should first install ```R``` (or update your current ```R``` installation), and then install ```RStudio```.

---

## Install R

### Windows

1. Download R-3.3.0-win.exe, or the latest version, from this site: [R for Windows][r-for-windows].
2. Run the downloaded executable (double click and follow instructions).
3. R is now available in your Program Files folder.

### Mac

1. Download R-3.3.0.pkg, or the latest version, from this site: [R for Mac][r-for-mac].
2. Run the downloaded package (double click and follow instructions).
3. R is now available in your Applications folder.


---

## Install RStudio

1. Download RStudio Desktop Installer from this site: [RStudio link][r-studio].
	* Mac: RStudio 0.99.902 - Mac OS X 10.6+ (64-bit), or latest/appropriate version
	* Win: RStudio 0.99.902 - Windows Vista/7/8/10, or latest/appropriate version
2. Run the downloaded package (double click and follow instructions).
3. RStudio is now available in your Applications or Program Files folder.

Parts of this material will be very basic and obvious for some of you. Please bear with us, and make yourself available to help your neighbors who may be less familiar, as we work through this introduction together.

---

## Exploring R

### What is R?

R was developed by Robert Gentleman and Ross Ihaka from the Statistics Department in 1990’s, in New Zealand, for use in statistical computing.[^r-contribs] 

Because it is free and [open-source][open-source], it has become a convenient and powerful tool for data science and statistical modeling in many academic research fields, in government, and in industry.

[open-source]: https://opensource.org/definition
[^r-contribs]: [https://www.r-project.org/contributors.html](https://www.r-project.org/contributors.html)

### Evaluating R

R was developed to allow users to engage with it **interactively** as well as for users to **develop programs** and packages that can be added to the open source repositories, for anyone to use.

The idea was that it could be flexible enough to be useful for novices, who would use existing programs/packages and functions that R provides, as well as for software developers, who would create R packages for their own custom scientific and statistical applications.

| **Advantages**       					| **Disadvantages** |
| Open-Source					   	| Packages are of varying quality |
| Academic/professional community	| Very different from other standards [^standards] |
| High-quality visualization	 	| Less intuitive plotting |
| Multi-dimensional/large-scale data analysis	| Memory (RAM) use is not the best |
| Extensive documentation			| Overwhelming / disparate references |
| There are many ways to do the same thing | There are many ways to do the same thing |

### A Word About Programming

The following process is a simplified, informal way to think about what you are doing when you are coding. We will return to some of these fundamental concepts throughout the lectures.

**Process:**

1. Give Instructions (you, to the computer)

2. Perform Action (computer, usually hidden from you)

3. Present Output (computer, to you)

So, the fact that R is a program _and_ a **programming** language means that, unlike other point-and-click proprietary software packages, R enables simple calculations and statistical modeling, as well as large-scale and repetitive/reproducible analyses.

#### Coding Requires Precise Instructions [^gigo]

[^gigo]: Another take on this principle is Garbage In, Garbage out. See [this site](https://en.wikipedia.org/wiki/Garbage_in,_garbage_out)

As with any programming language, precision in coding is critical, and beyond what we expect in normal conversation or in instructing other humans. For example, a parent could issue an instruction to his/her child: "**Go to bed**". 

This seems like a complete enough set of instructions for the child to understand.

However, if the parent issued this instruction to their computer (or their robot child), it might ask:

* "**Who** is instructing me?"
* "**Where** should I go to bed?"
* "**When** should I go to bed?", etc.

To satisfy the robot child, perhaps "I, your parent, am asking you to **go to bed** in your room, now" is a better set of instructions.  This seems overly complicated to a human.

However, if you are on a Linux or Mac, and you try to tell your computer to ```shutdown``` via the command line, it likely wants to know:

* **Who** is asking it to shutdown (the superuser, i.e. someone with authority who knows a password)
* **How** it should shutdown (halt, reboot, etc.), and
* **When** it should shutdown (usually "now").

If you are imprecise with your **instructions**, and simply type ```shutdown``` you get no **action** and no **output** or result (we are not considering error or warning messages here a 'result').

If you get the **instructions** precisely right, then the computer's **actions** will precisely follow your instructions, and the **output**, in this case, will be that the machine is powered off. [^defaults]  

[^defaults]: Sometimes, programmers will provide **defaults** in the functions that they write. This means that if the user does not give all the details (who, what, where, when, how, etc.) when sending instructions to the function, there are stored instructions that the function will use. This can be helpful to the user, simplifying the use of the function, but it is also dangerous if the user is unfamiliar with what the defaults are.

---

At this point, let's start talking about how we can use R for exploring, visualizing, and analyzing our data. Please start RStudio from your Applications/Programs folder.


---

### R is a Scientific Calculator

You can follow along by starting in the lower left-hand corner of your RStudio session. This is the **console**, where you can code _interactively_.
  
```
> 1+1
```

The carat, ```>```, indicates the beginning of a line where you have entered some code, in this case an _operation_, or set of **instructions**.

After you are done typing, press enter, and below it should be the **output**. You can ignore the ```[1]``` for now, and just look at what follows.

```
[1] 2
```

Internally, R is doing some sort of **action**, using 0's and 1's, to produce output from your instructions. Let's try something else:

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

That last line of instructions uses some operator with parentheses, which indicates that you are using a **function**. [^function]

[^function]: We will discuss functions and what you put inside the parentheses later. Parentheses can also be used to group operations.

Sometimes the instruction you give does not make sense to ```R```.

```
> log(-1)
[1] NaN
Warning message:
In log(-1) : NaNs produced
```

See that we have received output, ```[1] NaN```, as well a warning message below it describing the situation. 

When something goes wrong in R, it will give you **warnings**, and **errors** which are more ``severe.'' [^segfault] We will go over **troubleshooting** these warnings and errors later.

[^segfault]: And hopefully not too many **segfaults** -- segmentation faults, which would cause the program to fail or **crash**.

You can practice some of these operations, at this [website][r-operations] or this [video][r-operations-video], in order to learn to use **R** to do basic calculations in your day-to-day work.

[r-operations]: https://stat.ethz.ch/R-manual/R-devel/library/base/html/Arithmetic.html
[r-operations-video]: https://www.youtube.com/watch?list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU&v=UYclmg1_KLk

Suppose you want to use a letter or word (let's call it a **variable**) to represent a number or other type of **object** (such as a string of letters, a function, etc.), so that you can easily refer to the object without typing it again and again. 

You can **assign** the object to the letter or word using the ```<-``` operation.

It works like this: **variable <- object**

We will be doing a whole lot of this, but we introduce it quickly here. Start by creating a variable named ```myvar```, and assign a value to it:

```
> myvar <- 25
```

Now, when you type ```myvar``` into the console, it gives you output corresponding to the value you assigned to it:

```
> myvar
[1] 25
```

Suppose you wanted to ask what the value of $25x25$ is, you could type:

```
> myvar * myvar
[1] 625
```
or

```
> myvar^2
[1] 625
```

You can then assign that set of instructions, itself, to a new variable, ```myvar1```:

```
> myvar1 <- myvar^2
> myvar1
[1] 625
```

The rest of this page is still under construction.

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
