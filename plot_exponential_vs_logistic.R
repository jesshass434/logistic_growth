library(ggplot2)

#Base logistic plot
logistic_plot <- ggplot(aes(t, N), data = growth_data) +
  geom_point() +
  xlab("t") +
  ylab("logN") +
  scale_y_continuous(trans = 'log') +
  theme_minimal()

# Add the exponential growth model to the plot - adding in the exponential function
logistic_exponential_plot <- logistic_plot +
  geom_line(aes(x = t, y = N0 * exp(r * t)), color = "red", size = 0.8) +
  ggtitle("Exponential vs Logistic Growth")

#Call plot
logistic_exponential_plot

