rm(list=ls()) 

library(tidyverse)

# Number of Observations
n <- 100
# Degrees of Freedom
df <- 4

# I generate the observations from the t distribution
# I don't introduce any centrality parameter

sample <- rt(n, df)

# I display a probability histogram of the sample
MASS::truehist(sample, col = "blue")
# I add a density curve based on the underlying distribution
curve(dt(x, df),add=TRUE)

