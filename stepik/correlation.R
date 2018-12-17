correlation <- abs(cor(swiss))
names_collumns <- rownames(which(correlation == min(correlation), arr.ind = T , useNames = T))




x1 <- rnorm(30) # создадим случайную выборку
x2 <- rnorm(30) # создадим случайную выборку
x3  <- x1 + 5 # теперь коэффициент корреляции x1 и x3 равен единице
my_df <- data.frame(var1 = x1, var2 = x2, var3 = x3)


