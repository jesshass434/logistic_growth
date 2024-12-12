# Load package
library(ggplot2)

# Loading/naming the data
growth_data <- read.csv("experiment.csv")

# Defining parameters
N0 <- 986.507472309 

r <- 0.0100086

K <- 6.00e+10

# I use functions to define the models for reproducibility
# Define the logistic growth function
logistic_growth_fun <- function(t) {
  N <- (N0 * K * exp(r * t)) / (K - N0 + N0 * exp(r * t))
  return(N)
}

# Define the exponential growth function
exponential_growth_fun <- function(t) {
  N <- N0 * exp(r * t)
  return(N)
}

# Plotting a graph comparing exponential and logistic growth - raw data also shown on the logistic curve
growth_plot <- ggplot(growth_data, aes(x = t, y = N)) +
  geom_point(alpha=0.5) +
  geom_function(aes(color = "Exponential Growth"), fun = exponential_growth_fun, size = 1) +
  geom_function(aes(color = "Logistic Growth"), fun = logistic_growth_fun, size = 0.8, alpha = 0.5) +
  xlab("Time (t, mins)") +
  ylab("log(N)") +
  scale_y_continuous(trans = 'log') +
  ggtitle("Exponential vs Logistic Growth") +
  scale_color_manual(values = c("Exponential Growth" = "red", "Logistic Growth" = "blue")) +
  theme_minimal() +
  theme(legend.title = element_blank(),
        plot.title = element_text(hjust = 0.5))  

# Call the plot
growth_plot


