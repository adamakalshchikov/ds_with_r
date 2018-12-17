# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

my_clients <- read.csv('Клиенты.txt')
Возраст <- c(27, 18, 17)
my_clients <- cbind(my_clients, Возраст)
fit_clients <- lm(Зарплата ~ Возраст, my_clients)
fee_prediction <- predict(fit_clients, my_clients)
cbind(my_clients$Зарплата, fee_prediction)

plot(x = my_clients$Возраст, y = my_clients$Зарплата)
abline(fit_clients)

