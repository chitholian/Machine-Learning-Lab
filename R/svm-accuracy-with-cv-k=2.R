# Load the required libraries.
library(RWeka)
library(caret)
# Input the whole dataset.
data <- read.csv('../Datasets/training-data-14-tuples.csv')
#data <- read.csv(file.choose())
kfolds <- createFolds(data$buys_computer, k = 2) # Create folds.
sum = 0 # Initial sum of accuracies is zero.
for(i in kfolds){ # Loop the folds and calculate accuracies.
  trainData <- data[-i,] # Take training tuples.
  test <- data[i,] # Take test tuples.
  # Now create the model and train it; e.g. using a linear SVM.
  model <- train(buys_computer~., method='svmLinear', data = trainData)
  prediction <- predict(model, test) # Predict on test tuples.
  cfMatrix <- confusionMatrix(data = prediction, test$buys_computer)
  sum <- sum + cfMatrix$overall[1] # Sum the overall accuracies.
}
accuracy <- sum/length(kfolds) # Take the average.
accuracy # Print the accuracy.
