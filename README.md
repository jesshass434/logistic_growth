# Homework Answers 

## Background/Methods

In this practical I analysed the experiment.csv file, which contained data about population size (N) of *E. coli* at different times (t). 

* Plotted N against T and then plotted logN against t (plot_data.R) to linearise exponential growth 

* Fitted a linear model Estimated model parameters (N0, r, k) using a linear approximation (fit_linear_model.R).
  CASE 1: In early growth phase (case 1), N0 still much smaller than K.
  We filter the data for when t<1500 as this is when bacteria appear to be in early growth phase based on the first N against T plot.
  Then create a linear model where the log-transformed response variable (N) is predicted by t (predictor variable).
  We use log tranformation as linearises exponential growth part as we then use linear regression to estimate logN0 which is the intercept, and r, which is the slope (coefficient of t). Then do e^logN0.

  CASE 2: When t is large (tending to infinity), population stabilises to carrying capacity, k.
  We filter the data for when t>2500 as this is when based on the graph I can be sure they have reached carrying capacity as aympptote reached. Then fit a different linear model, the intercept of which will be K.

* Assessed fit of the model to the data graphically (plot_data_and_model.R)

## Results 

The initial population size of *E.coli* was around 987 bacteria, with a growth rate of around 0.01 and a carrying capacity of around 60,000,000,000
| Parameter  | Estimated Value |
| ------------- | ------------- |
|N0 (initial population size of bacteria at time 0)|986.50747|
|r (intrinsic growth rate)|0.0100086|
|K (carrying capacity)|6.00e+10|

*Parameter Estimates Based on Experiment.csv Data*

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
