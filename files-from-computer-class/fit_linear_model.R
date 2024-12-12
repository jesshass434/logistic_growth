#Script to estimate the model parameters using a linear approximation

# Loading package
library(dplyr)

# Renaming data
growth_data <- read.csv("experiment.csv")

#Case 1. K >> N0, t is small

# Filtering data so only includes when t<1500, creating a logged variable
data_subset1 <- growth_data %>% filter(t<1500) %>% mutate(N_log = log(N))

# This creates a linear model where the log-transformed response variable is predicted by t (the predictor variable).
model1 <- lm(N_log ~ t, data_subset1)

# Viewing model 1 outputs
summary(model1)

#Case 2. N(t) = K
## Filtering the data again, this time for when t>2500 when stationary phase reached
data_subset2 <- growth_data %>% filter(t>2500)

# Making a second linear model based on this filtering 
model2 <- lm(N ~ 1, data_subset2)

# Viewing model 2 outputs
summary(model2)