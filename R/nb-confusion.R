library(e1071)
library(caret)
train <- read.csv(file.choose())
test <- read.csv(file.choose())
model <- naiveBayes(buys_computer~., data=train)
prediction <- predict(model, test)
cfMatrix <- confusionMatrix(data=prediction, test$buys_computer)
cfMatrix
