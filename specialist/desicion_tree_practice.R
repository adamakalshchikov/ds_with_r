clients_raw <- read.csv('Clients.txt', sep = ';', header = T)
clients <- clients_raw

# Построить модель, предсказывающую годовой доход (YearlyIncome)
# на основе анкетных данных клиентов

library(rpart)
clients$NameStyle <- NULL

#transform(clients[, c('CustomerKey','HouseOwnerFlag','SalesTerritoryKey')],int = as.factor)

clients$BirthDate <- as.Date(clients$BirthDate)
clients$DateFirstPurchase <- as.Date(clients$DateFirstPurchase)
clients$GeographyKey <- as.factor(clients$GeographyKey)
clients$BirthDate <- as.Date(clients$BirthDate)
clients$DateFirstPurchase <- as.Date(clients$DateFirstPurchase)
fit_lm <- lm(YearlyIncome ~ . , data = clients)
fit_tree <- rpart(YearlyIncome ~ . , data = clients)

prediction_by_tree <- predict(fit_tree, clients)
rmse_tree <- sqrt(sum((prediction_by_tree - clients$YearlyIncome)^2))

#RMSE =  614082

# с приминением разбиения на тестовую и тренировочную датасеты
random <- rnorm(nrow(clients))
clients <- cbind(clients, random)
clients_train <- clients[clients$random <=0.5, ]
clients_test <- clients[clients$random > 0.5, ]

fit_train <- rpart(YearlyIncome ~ ., 
                   data = clients_test)
sqrt(sum((clients_test$YearlyIncome - predict(fit_train, clients_test))^2))
