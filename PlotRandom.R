
## PlotRandom.R
## Author: Jacob Lewis
## Date: October 06, 2021
##
## Purpose: 
##  A function that will generate a random sample of iid normal random values.
##  Then it will plot a histogram with an overlaid mean on the plot.
##
## Inputs:
##  numpts = number of points to generate
##  mu = theoretical mean of the normal distribution
##  sigma = standard deviation of the normal distribution
##  numbins = number of bins in the histogram
##  meanColor = the color for overlaid mean
##  seed = a random number generator seed, ensures reproducibility
##
## Output:
##  A list with following elements:
##    Random_values = a vector of the random numbers
##    Mean_x = the sample mean of the Random_values
##    SD_x = the sample standard deviation of Random_values
##
## 

plotRandomNormals <- function(numpts = 100, 
                              mu = 0, sigma = 1, 
                              numbins = 10, 
                              meanColor = "navy", 
                              seed = 10062021) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean = mu, sd = sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks = numbins)
  abline(v = mean_x, col = meanColor, lwd = 2)
  
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x))
}






