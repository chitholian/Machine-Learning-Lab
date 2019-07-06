# Load the required libraries.
library(RWeka)
library(caret)
library(nnet)
# Input training and test datasets.
train <- read.csv('../Datasets/training-data-10-tuples.csv')
test <- read.csv('../Datasets/test-data-4-tuples.csv')
#train <- read.csv(file.choose())
#test <- read.csv(file.choose())
# Create the model.
model <- train(buys_computer~., method='nnet', data = train)
prediction <- predict(model, test) # Predict on test data.
cfMatrix <- confusionMatrix(data=prediction, test$buys_computer)
cfMatrix # Print the confusion-matrix.
