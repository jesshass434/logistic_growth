#Script to estimate the model parameters using a linear approximation

#getting package
library(dplyr)

#renaming
growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small

#Filtering data so ony includes when t<0.1, creating a logged variable
data_subset1 <- growth_data %>% filter(t<1500) %>% mutate(N_log = log(N))

#This creates a linear model where the log-transformed response variable is predicted by t (the predictor variable).
model1 <- lm(N_log ~ t, data_subset1)
summary(model1)

#Case 2. N(t) = K

data_subset2 <- growth_data %>% filter(t>2500)

model2 <- lm(N ~ 1, data_subset2)
summary(model2)

