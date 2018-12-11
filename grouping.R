boxplot(mtcars)

# Miles per gallon for each value of cyl count
boxplot(mtcars$mpg ~  mtcars$cyl)

mtcarsNew <- mtcars[!mtcars$wt %in% heavy_cars, ]
