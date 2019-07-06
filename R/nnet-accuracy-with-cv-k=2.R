setwd('/mnt/LinuxData/CSE/7th-Semester/CSE-716/Lab-Assignments/') # Set working directory.
# Load the required libraries.
library(RWeka)
library(caret)
library(nnet)
# Read the whole dataset.
data <- read.csv(file.choose())
# Create folds, i.e. split into training and test dataset.
kfolds <- createFolds(data$buys_computer, k = 2)
sum = 0 # Initial sum of accuracy.
for(i in kfolds){ # Loop the folds and calculate accuracies.
  trainData <- data[-i,]
  test <- data[i,]
  model <- train(buys_computer~., method='nnet', data = trainData)
  prediction <- predict(model, test)
  cfMatrix <- confusionMatrix(data = prediction, test$buys_computer)
  sum <- sum + cfMatrix$overall[1] # Sum the overall accuracies.
}
accuracy <- sum/length(kfolds) # Take the average.
accuracy # Print the accuracy.
