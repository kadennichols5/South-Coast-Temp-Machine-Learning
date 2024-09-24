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
library(scales)
library(lubridate)
library(MASS)
library(dplyr)
library(stats)
library(tidyverse)
tidymodels_prefer()
load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wtmp_folds.rda")
# Loading workflow 
load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wf_lin_reg.rda")

# There is no tuning so I will not make a tuning grid.
lreg_fit <- fit_resamples(wf_lin_reg, resamples = wtmp_folds)
lreg_rmse <- collect_metrics(lreg_fit) %>% slice(1)

save(lreg_fit, file = "/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/lreg_fit.rda")




