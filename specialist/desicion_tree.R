# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

library(rpart)
model_T <- rpart( mpg ~ ., mtcars)
result <- predict(model_T)

# Дерево решений: 292.0862
# Линейная регрессия (все переменные): 147.4944

plot(model_T)
