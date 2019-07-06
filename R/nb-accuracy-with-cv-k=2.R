library(e1071)
library(caret)
data <- read.csv('../Datasets/training-data-14-tuples.csv')
#data <- read.csv(file.choose())
kfolds <- createFolds(data$buys_computer, k = 2)
sum = 0
for(i in kfolds){
  train <- data[-i,]
  test <- data[i,]
  model <- naiveBayes(buys_computer~., data = train)
  prediction <- predict(model, test)
  cfMatrix <- confusionMatrix(data = prediction, test$buys_computer)
  sum <- sum + cfMatrix$overall[1]
}
accuracy <- sum/length(kfolds)
accuracy
