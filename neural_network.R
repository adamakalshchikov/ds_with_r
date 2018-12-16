# DS1-SFA-457832hfds

library(neuralnet)
mtcars
Brain <- neuralnet(formula = mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb, data =  mtcars)

plot(Brain)
compute(Brain, mtcars[ , 2:ncol(mtcars)])

