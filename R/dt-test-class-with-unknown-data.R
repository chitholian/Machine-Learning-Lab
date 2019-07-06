setwd('/mnt/LinuxData/CSE/7th-Semester/CSE-716/Lab-Assignments/')
library(RWeka)
data <- read.csv('./Datasets/training-data-14-tupples.csv')
test <- read.csv('./Datasets/unknown-classed-tupple.csv')
classification <- J48(buys_computer~., data = data)
prediction <- predict(classification, test, type = "class")
prediction
