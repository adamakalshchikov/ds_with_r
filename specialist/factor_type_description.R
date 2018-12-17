# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

clients <- read.csv('Clients.txt', sep = ';', header = T)

# Convertation of integer to factor and back to int
clients$CustomerKey <- as.factor(clients$CustomerKey)
clients$CustomerKey <- as.numeric(as.character(clients$CustomerKey))

# joining of strings
paste(clients$FirstName, clients$LastName)
