# loading model, recipe
load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wf_rand_for.rda")
load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wtmp_folds.rda")


set.seed(1112)
library(readr)
library(magrittr)
library(tidymodels)
library(glmnet)
library(corrplot)
library(ggplot2)
library(stats)
library(finalfit) # missing_plot()
library(readr)
library(zoo)
library(ggfortify)
library(forecast)
library(scales)
library(lubridate)
library(MASS)
library(dplyr)
library(stats)
library(tidyverse)
tidymodels_prefer()



# making tuning grid 
grid_random_for <- grid_regular(mtry(range = c(1, 6)), 
                                trees(range = c(200,600)), 
                                min_n(range = c(3,15)), 
                                levels = 7)
# TUNING MODEL

random_forest_tune <- tune_grid(
  wf_rand_for,
  resamples = wtmp_folds,
  grid = grid_random_for)

# Save tuned model

save(random_forest_tune, file = '/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/random_forest_tune.rda')
