# DS1-SFA-457832hfds

library(NbClust)

NbClust(data = mtcars, method = 'kmeans', min.nc = 2, max.nc = 10)
