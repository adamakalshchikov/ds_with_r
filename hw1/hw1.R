# DS1-SFA-457832hfds
home_dir <- 'C:\\Projects\\R_projects\\ds_with_r'
setwd(home_dir)

train_df <- read.csv('hw1/train_data.csv', sep = ';', header = T)
test_df <- read.csv('hw1/test_data.csv', sep = ';', header = T)
colnames(train_df) <- c('x1','x2','y')
colnames(test_df) <- c('x1','x2','y')

test_df$x1 <- as.numeric(test_df$x1)
test_df$x2 <- as.numeric(test_df$x2)
test_df$y <- as.numeric(test_df$y)

train_df$x1 <- as.numeric(train_df$x1)
train_df$x2 <- as.numeric(train_df$x2)
train_df$y <- as.numeric(train_df$y)


find_interval <- function(train_data, test_data, x, train_target, test_target){
  min_rmse <- Inf
  for (i in 1:max(x)){
    for (j in max(x):i){
      if (i < j){
        cutted <- train_data[x > i & x < j, ]
        fit <- lm(train_target ~ x, cutted)
        prediction <- predict(fit, test_data)
        rmse <- sum((test_target - prediction)^2)
        if(rmse < min_rmse){
          best_fit <- fit
          min_rmse <- rmse
          best_i <- i
          best_j <- j
        }
      }
    }
  }
}

#find_interval(train_df, test_df, train_df$x1, train_df$y, test_df$y)

train_df_1 <- train_df[train_df$x1 < 450, ]
train_df_2 <- train_df[train_df$x1 >= 450 & train_df$x1 < 1550,]
train_df_3 <- train_df[train_df$x1 > 1550, ]
train_divided <- list(train_df_1, train_df_2, train_df_3, train_df)

min_rmse <- Inf
for (i in train_divided){
  fit_lm <- lm(y ~ ., i)
  fit_lm <- step(fit_lm, direction ='backward')
  prediction <- predict(fit_lm, test_df)
  rmse <- sqrt(sum((test_df$y - prediction)^2))
  if(rmse < min_rmse){
    min_rmse <- rmse
    best_data <- i
    }
}


