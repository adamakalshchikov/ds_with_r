# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\DS_spec'
setwd(home_dir)

#Линейная регрессия
mtcars
plot(x = mtcars$hp, y = mtcars$mpg)
lm(mpg ~ hp, mtcars)
abline(lm(mpg ~ hp, mtcars), col = 'red')

# Строим модели с одним предиктором
Model1 <- lm(mpg ~ hp, mtcars)
Model2 <- lm(mpg ~ disp, mtcars)
Model3 <- lm(mpg ~ cyl, mtcars)

# Предсказание mpg
Result1 <- predict(Model1, mtcars)
Result2 <- predict(Model2, mtcars)
Result3 <- predict(Model3, mtcars)

# Сравниваем результат
cbind(Result1, mtcars$mpg)


# Строим модели с несколькими предикторами и предсказываем результат
Model4 <- lm(mpg ~ cyl + hp + disp, mtcars)
Result4 <- predict(Model4, mtcars)

Model5 <- lm(mpg ~. , mtcars)
Result5 <- predict(Model5, mtcars)

prediction <- cbind(Result1, Result2, Result3, Result4, Result5)

cbind(mtcars$mpg, Result1, Result2, Result3, Result4, Result5)


