# DS1-SFA-457832hfds

#k-means clustering
CarClust3 <- kmeans(mtcars, 3)


ClusteredCar3 <- cbind(mtcars, CarClust5$cluster)
colnames(ClusteredCar3)[ncol(ClusteredCar3)] <- 'cluster'

ClusteredCar3[ClusteredCar3$cluster == 1, ]
ClusteredCar3[ClusteredCar3$cluster == 2, ]
ClusteredCar3[ClusteredCar3$cluster == 3, ]