# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

mtcars.mpg <- mtcars$mpg
prediction <- cbind(prediction, mtcars.mpg)
sum((prediction$mtcars.mpg - Result1)^2)
