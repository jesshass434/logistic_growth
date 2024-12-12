#Script to plot data and model

# Name and get the data again
growth_data <- read.csv("experiment.csv")


# Define the logistic growth function - calculates N at time t based on lgoistic growth equation
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

# My estimates of N0, r, and K based on model outputs, assigning them as parameter values

N0 <- 986.507472309 

r <- 0.0100086

K <- 6.00e+10

# Plotting the logistic growth model (red) against our observed data points (black) to assess our model's fit

ggplot(aes(x=t,y=N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point() 


