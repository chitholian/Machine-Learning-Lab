library(RWeka)
library(caret)
train <- read.csv(file.choose())
test <- read.csv(file.choose())
model <- J48(buys_computer~., data=train)
prediction <- predict(model, test)
cfMatrix <- confusionMatrix(data=prediction, test$buys_computer)
cfMatrix
