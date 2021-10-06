#####################################
## testPlotRandom.R
##
## A short script to test function in PlotRandom.R
##

## Load the function in the environment.

source("PlotRandom.R")

plotRandomNormals()

out <- plotRandomNormals()

str(out)

out2 <- plotRandomNormals(1000, 3, 0.5, 18, "green4", 2020)

out2$Random_values
out2$Mean_x
out2$SD_x

out3 <- plotRandomNormals(meanColor = "purple")

## Try and break it

plotRandomNormals(numpts = "Tom")


