# Распределение остатков модели 1
ggplot(swiss, aes(x = lm1_resid))+
  geom_histogram(binwidth = 4, fill = 'white',col = 'black')

# Распределение остатков модели 2
ggplot(swiss, aes(x = lm2_resid))+
  geom_histogram(binwidth = 4, fill = 'blue',col = 'black')

qqnorm(lm1$residuals)
qqline(lm1$residuals)