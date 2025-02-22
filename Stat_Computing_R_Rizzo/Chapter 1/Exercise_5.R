rm(list=ls()) 
library(tidyverse)
library(ggplot2)

# I define the function f(x)=(x-a)/b
f <- function(x, a, b){
  return((x-a)/(b))
}

# Number of observations
n <- 1000
mean <- 2
sd <- 2

# I generate a random sample from the Gaussian Distribution
x <- rnorm(n, mean, sd)

# I return the standardized random sample
sx <- f(x, a = min(x), b= max(x)-min(x))

# I print summary statistics for x (og sample), and sx (standardized sample)
summary(x)
summary(sx)

# I "studentize" the sample
z <- f(x, a = mean(x), b = sd(x))

# I display the summary statistics for z
summary(z)

# I check that z has standard deviation 1
if (sd(z) == 1) print("The standard deviation is 1")

MASS::truehist(z, col = "blue")