#Script to plot the logistic growth data

#Naming data/importing data
growth_data <- read.csv("experiment.csv")

#Getting ggplot package for graphing
library(ggplot2)

#Plotting a graph, labelling axes
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("N") +
  
  theme_bw()

#Plotting a logged version 

ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("logN") +
  
  scale_y_continuous(trans='log10')