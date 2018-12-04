# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\DS_spec'
setwd(home_dir)

# Данные ~Google Диск\specialist\ДС\ДС1 (февраль 2018).zip\Данные\Clients.txt
# Как зовут клиентов мужского пола, у которых двое детей?
clients <- read.csv('Clients.txt', sep = ';', header = T)
