# DS1-SFA-457832hfds

library(randomForest)
r_forest <- randomForest(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb, data =  mtcars)
rf_result <- predict(r_forest, mtcars)

sum((mtcars$mpg - rf_result)^2) # ~ 44

cbind(mtcars$mpg, rf_result)
