# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\DS_spec'
setwd(home_dir)

var1 <- 15
var6 <- list(10, 20, 'specialist.ru')

var7 <- list(c('Evgeny Onegin','Vladimir Lensky'), c(27, 18))

d1 <- data.frame(c('Evgeny','Vladimir','Tatiana'), 
                 c('Onegin','Lensky','Larina'),
                 c(150, 240, 185))
clients <- read.csv('Клиенты.txt')

# Naming of table`s collumns
colnames(d1) <- c('first_name','second_name','fee')
