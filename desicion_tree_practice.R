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
clients[, c("DateFirstPurchase", "BirthDate")] <- as.Date(clients[, c("DateFirstPurchase", "BirthDate")])
fit_lm <- lm(YearlyIncome ~ . , data = clients)
fit_tree <- rpart(YearlyIncome ~ . , data = clients)

prediction_by_tree <- predict(fit_tree, clients)
rmse_tree <- sqrt(sum((prediction_by_tree - clients$YearlyIncome)^2))

#RMSE =  614082