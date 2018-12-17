# DS1-SFA-457832hfds

# Load data
clients <- read.csv('Clients.txt',sep = ';', header = T)

clients_start <- clients[!clients$CustomerKey %% 15 == 0,]
clients_control <- clients[clients$CustomerKey %% 15 == 0, ]

# Построить обученную модель на clients_start, проверять модель на clients_control
# Алгоритмы: lm, rpart(method = " "), neuralnet, randomForest
# Методы: Обучение/тестирование - MSE, перекрёстная проверка
# Предсказывается: YearlyIncome 