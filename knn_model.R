set.seed(1112)
load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wf_knn.rda")
load("/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/wtmp_folds.rda")

# making grid 

grid_knn <- grid_regular(neighbors(range = c(1,10)), 
                         levels = 5)

knn_tune <- tune_grid(
  wf_knn,
  resamples = wtmp_folds,
  grid = grid_knn)

# Save tuned model

save(knn_tune, file = '/Users/kadensnichols/Documents/GitHub/PSTAT131/131 Final Project/rda/knn_tune.rda')
