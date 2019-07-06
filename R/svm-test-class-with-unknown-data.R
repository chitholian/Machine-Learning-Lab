# Load the required libraries.
library(RWeka)
library(caret)
# Input training and test datasets.
train <- read.csv(file.choose())
test <- read.csv(file.choose())
# Now train the classifier.
classifier <- train(buys_computer~., method="svmLinear", data = train)
# Predict on the classifier.
prediction <- predict(classifier, test)
prediction # print the predicted class-label.
