library(e1071)
train <- read.csv('../Datasets/training-data-14-tuples.csv')
test <- read.csv('../Datasets/unknown-classed-tuple.csv')
#train <- read.csv(file.choose())
#test <- read.csv(file.choose())
classification <- naiveBayes(buys_computer~., data = train)
prediction <- predict(classification, test, type = "class")
prediction
