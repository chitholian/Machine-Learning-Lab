setwd('/mnt/LinuxData/CSE/7th-Semester/CSE-716/Lab-Assignments/')
library(e1071)
data <- read.csv('./Datasets/training-data-14-tupples.csv')
test <- read.csv('./Datasets/unknown-classed-tupple.csv')
classification <- naiveBayes(buys_computer~., data = data)
prediction <- predict(classification, test, type = "class")
prediction
