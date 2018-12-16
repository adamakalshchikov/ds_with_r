# DS1-SFA-457832hfds

mtcars
all_cars <- cbind(mtcars, rnorm(nrow(mtcars)))
colnames(all_cars)[ncol(all_cars)] <- 'Random'            

test <- all_cars[all_cars$Random > 0.5, ]                
train <- all_cars[all_cars$Random <= 0.5, ]

# Для просмотра отсортированного по Random списка
all_cars <- all_cars[order(all_cars$Random, decreasing = T), ]

nrow(test)
nrow(train)


# Обучаем модель
library(rpart)
m <- rpart(mpg ~ cyl + wt, train)
R <- predict(m, test)
sum((test$mpg - R)^2)


