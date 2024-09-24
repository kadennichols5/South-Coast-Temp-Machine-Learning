load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wf_poly.rda")
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




grid_poly <- grid_regular(degree(range = c(1,10)), levels = 5)
tune_poly <- tune_grid(wf_poly,
                       resamples = wtmp_folds,
                       grid = grid_poly)
# Saving 

save(tune_poly, file = '/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/tune_poly.rda')






