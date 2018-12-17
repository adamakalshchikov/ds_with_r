# Функция gvlma() из библиотеки gvlma позволяет получить оценку выполнения основных 
# допущений линейной регрессии. 
# В качестве аргумента она принимает объект, в который сохранена модель. 
# Можно задать формулу модели прямо в функции gvlma. Чтобы увидеть основные статистики, 
# нужно выполнить команду summary для объекта, созданного с помощью функции gvlma. 

library(gvlma)
data <- read.csv('https://stepik.org/media/attachments/lesson/12088/homosc.csv')
fit <- lm(DV ~ IV, data)
lm_eval <- gvlma(DV ~ IV, data)
summary(lm_eval)
