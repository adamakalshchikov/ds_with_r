clients_raw <- read.csv('Clients.txt', sep = ';', header = T)
clients <- clients_raw
clients[, c("GeographyKey", "CustomerKey", "SalesTerritoryKey", "HouseOwnerFlag")] <- as.factor(clients[, c("GeographyKey", "CustomerKey", "SalesTerritoryKey", "HouseOwnerFlag")])
fit_lm <- lm(YearlyIncome ~ . , data = clients[-c("NameStyle")])
