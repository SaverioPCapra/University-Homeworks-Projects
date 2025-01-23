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

#______________________________________________________________________________
# I "studentize" the sample
z <- f(x, a = mean(x), b = sd(x))

# I display the summary statistics for z
summary(z)
#______________________________________________________________________________
# I scale the sample by subtracting the median and dividing by the IQR
median_rescaled_x <- f(x, a = median(x), b = IQR(x))

# I display the summary statistics for median_rescaled_x
summary(median_rescaled_x)


# I display the histograms for both rescalings
par(mfrow = c(1, 2)) 

MASS::truehist(z, col = "blue")
MASS::truehist(median_rescaled_x, col = "red")

par(mfrow = c(1,1))
