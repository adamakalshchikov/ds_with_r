# Напишите функцию resid.norm, которая тестирует распределение остатков от модели на нормальность 
# при помощи функции shapiro.test и создает гистограмму при помощи функции ggplot() 
# с красной заливкой "red", если распределение остатков значимо отличается от нормального (p < 0.05), 
# и с зелёной заливкой "green" - если распределение остатков значимо не отличается от нормального.

#На вход функция получает регрессионную модель. Функция возвращает переменную, в которой сохранен 
#график ggplot.

sf <- shapiro.test(lm1$residuals)

resid.norm <- function(fit){
library(ggplot2)
if(shapiro.test(fit$residuals)$p.value >= 0.05){
  filling_col = 'green'}
else{
  filling_col = 'red'
  }
histogramm <- ggplot(data = fit, aes(x = residuals)) + geom_histogram(binwidth = 4, col = 'black', fill = filling_col)
return(histogramm)    
}

