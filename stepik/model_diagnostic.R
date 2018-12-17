library(ggplot2)

ggplot(data = swiss, aes(Examination, Education))+
  geom_point()+
  geom_smooth()

lm1 <- lm(Education ~ Examination, swiss)
summary(lm1)

# Строим полиномиальную модель степенью выше, чем линейная
swiss$Examination_squared<- (swiss$Examination)^2

lm2 <- lm(Education ~ Examination + Examination_squared, swiss)
summary(lm2)
#Сравниваем модели, получаем статистически значимые отличия
anova(lm2, lm1)

# Записываем результаты предсказаний и величины остатков с каждой модели
swiss$lm1_fitted <- lm1$fitted
swiss$lm2_fitted <- lm2$fitted
swiss$lm1_resid <- lm1$residuals
swiss$lm2_resid <- lm2$residuals
# Отдельно запишем номер наблюдения (номер строчки датасета)
swiss$ods <- number <- 1:nrow(swiss)

# Построим графики рассеяния и моделей: красный Education (lm1), голубой Education^2 (lm2)
ggplot(data = swiss, aes(x = Examination, y = Education))+
  geom_point(size = 3)+
  geom_line(aes(x = Examination, y = lm1_fitted), col = 'red', lwd = 1)+
  geom_line(aes(x = Examination, y = lm2_fitted), col = 'blue', lwd = 1)+
  theme_bw()

# График остатков lm1
ggplot(data = swiss, aes(x = lm1_fitted, y = lm1_resid))+
  geom_point(size = 3) + geom_hline(yintercept =  0, col = 'red', lwd = 1)

# График остатков lm2
ggplot(data = swiss, aes(x = lm2_fitted, y = lm2_resid))+
  geom_point(size = 3) + geom_hline(yintercept =  0, col = 'red', lwd = 1)

# Проверяем остатки для первой модели lm1
ggplot(swiss, aes(x = ods, y = lm1_resid))+
  geom_point(size = 3) + geom_smooth()

# Проверяем остатки для второй модели lm2
ggplot(data = swiss, aes(x = ods, y = lm2_resid))+
  geom_point(size = 3) + geom_smooth()

# Гомоскедастичность остатков
ggplot(data = swiss, aes(x = lm1_fitted, y = lm1_resid))+
  geom_point(size = 3) + geom_hline(yintercept =  0, col = 'red', lwd = 1)

ggplot(data = swiss, aes(x = lm2_fitted, y = lm2_resid))+
  geom_point(size = 3) + geom_hline(yintercept =  0, col = 'red', lwd = 1)