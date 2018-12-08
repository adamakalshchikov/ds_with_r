# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

# Какие два вопроса следует задать продавцу в автосалоне,
# чтобы выбрать самый экономичный автомобиль? (выбор предикторов)cor(mtcars)

minErr <- Inf
for (i in 2:ncol(mtcars)){
  for (j in 3:ncol(mtcars)){
    if(i < j){
      fit <- lm(mtcars$mpg ~ mtcars[,i] + mtcars[, j])
      rmse <- sum((mtcars$mpg - predict(fit, mtcars))^2)
      if (rmse < minErr){
        minErr <- rmse
        best_model <- fit
        best_i <-colnames(mtcars[i])
        best_j <- colnames(mtcars[j])
      }
    }
  }
}

