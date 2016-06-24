---
layout: post
title:  "Lesson 03 - Basic Plotting"
categories: jekyll 
---

## Packages
```{r}
install.packages("RColorBrewer")
install.packages("beeswarm")
install.packages("RGraphics")
```

## Plot Types
1. Histogram
2. Density
3. Line graph
4. Scatterplot, with legend
5. Boxplot, Violinplot
6. Barchart, with error bars
7. Correlation matrix

## Plot and Graphical Functions
* plot()
* par()
* lines()
* points()
* text()
* title()
* mtext - margins
* axis()
* colorRamp()
* rgb()
* expression()
* layout()

## Saving / exporting plot
* jpeg()
* pdf()
* png()
* dev.copy()
* devSave()
* quartz()
* dev.off()

## Lattice Plots
* xyplot()
* bwplot()
* histogram()
* stripplot()
* dotplot()
* splom()
* levelplot()
* contourplot()

## Prior to Class or at beginning of class
1. Gather survey data and/or simulate data (part of homework?)
2. Create shiny page with interactive graphs?

## Lesson Plan
1. Install necessary packages;
2. Introduce types of plots; introduce save as pdf.
3. Talk about how these relate to types of data.
4. Have interactive session / group work, where users decide how to visualize data in two ways.
5. Discussion of what worked, why they made the choices they did, how they got help for tweaking their plots.
6. Project - Reproduce Anscombe's quartet. summarize. Describe how points vs. boxplot, etc, differ: [Anscombe's Quartet](http://www.nature.com/nmeth/journal/v9/n1/full/nmeth.1829.html)

## Main Points
* There may be many ways to show the same data, all leading to different insights.
* There may be many data sets that look the same, if you use a particular method of visualization that does not discriminate between them, leading to false conclusions.

## References
Parts of this lesson were sourced from this site: [R Base Graphics: An Idiot's Guide](http://rpubs.com/SusanEJohnston/7953)

Other learning resources for base R plotting:

* [Clean Graphs in R](http://shinyapps.org/apps/RGraphCompendium/index.php)
* [Quick-R: Basic Graphs](http://www.statmethods.net/graphs/)
* [Introduction to R: Base Graphics (ramnathv)](https://ramnathv.github.io/pycon2014-r/visualize/base_graphics.html)
* [Graphics in the R Language](http://www.stat.berkeley.edu/~statcur/WorkshopBC/Presentations/Graphics/graphics.pdf)
* [On Boxplots](http://www.nature.com/nmeth/journal/v11/n2/pdf/nmeth.2813.pdf)
* [BoxPlotR](http://boxplot.tyerslab.com)
* [Revolution Analytics: graphics](http://blog.revolutionanalytics.com/graphics/)
* [R Graphics](https://www.stat.auckland.ac.nz/~paul/RG2e/)

Other topics:

* [BMJ Statistics Notes](http://www.bmj.com/specialties/statistics-notes)
* [Experimental Design (Institute for Lab Animal Research)](http://ilarjournal.oxfordjournals.org/content/55/3)

Books

* R Graphics
* Graphical Data Analysis with R
* [Statistics at Square One](http://www.bmj.com/about-bmj/resources-readers/publications/statistics-square-one)
