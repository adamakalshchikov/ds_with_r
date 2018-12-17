# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

massiv <- rnorm(100)
boxplot(massiv)
boxplot.stats(massiv)
outliers <- boxplot.stats(massiv)$out

boxplot(setdiff(massiv, outliers))

# Операции над множествами

A <- c(1, 3, 4)
B <- c(3, 4, 100, 200, 300)

union(A, B) # объединение
intersect(A,B) # пересечение
setdiff(A, B) # вычитание

is.element(200, A)
is.element(200, B)

# mtcars ищем аномальные значения с помощью boxplot и операций над множествами
# Задача, какие машины в mtcars имеют массу, выходящую за "усы" боксплота
heavy_cars <- boxplot.stats(mtcars$wt)$out
normal_cars <- setdiff(mtcars$wt, mtcars[mtcars$wt %in% heavy_cars, ])
