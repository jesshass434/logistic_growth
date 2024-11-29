#Script to plot data and model

growth_data <- read.csv("experiment.csv")


#Define the logistic model 
logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- 986.507472309 

r <- 0.0100086

K <- 6.00e+10

ggplot(aes(x=t,y=N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

#scale_y_continuous(trans='log10')
