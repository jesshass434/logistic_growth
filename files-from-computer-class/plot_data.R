#Script to plot the logistic growth data

# Naming data/importing data
growth_data <- read.csv("experiment.csv")

# Getting ggplot package for graphing
library(ggplot2)

# Plotting a graph, labelling axes
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("N") +
  
  theme_bw()

#Plotting the same graph with logN y axis instead to allow better visualisation of the exponential phase

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("logN") +
  
  scale_y_continuous(trans='log')
