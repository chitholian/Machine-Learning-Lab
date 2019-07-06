# Load the required libraries.
library(RWeka)
library(caret)
# Input training and test datasets.
train <- read.csv('../Datasets/training-data-10-tuples.csv')
test <- read.csv('../Datasets/test-data-4-tuples.csv')
#train <- read.csv(file.choose())
#test <- read.csv(file.choose())
# Now create the model and train it; e.g. using a linear SVM.
model <- train(buys_computer~., method='svmLinear', data = train)
prediction <- predict(model, test) # Predict on test dataset.
cfMatrix <- confusionMatrix(data=prediction, test$buys_computer)
cfMatrix # Print the confusion-matrix.
