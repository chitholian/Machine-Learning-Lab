setwd('/mnt/LinuxData/CSE/7th-Semester/CSE-716/Lab-Assignments/')
# Load the required libraries.
library(RWeka)
library(caret)
library(nnet)
# Input training and test datasets.
train <- read.csv(file.choose())
test <- read.csv(file.choose())
# Create the model.
model <- train(buys_computer~., method='nnet', data = train)
prediction <- predict(model, test) # Predict on test data.
cfMatrix <- confusionMatrix(data=prediction, test$buys_computer)
cfMatrix # Print the confusion-matrix.
