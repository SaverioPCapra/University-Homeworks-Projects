rm(list=ls()) 
library(tidyverse)

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