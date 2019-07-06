# Load the required libraries.
library(RWeka)
library(nnet)
# Input training and test datasets.
train <- read.csv('../Datasets/training-data-14-tuples.csv')
test <- read.csv('../Datasets/unknown-classed-tuple.csv')
#train <- read.csv(file.choose())
#test <- read.csv(file.choose())
# Now train the classifier.
classifier <- nnet(buys_computer~., size=2, data = train)
# Predict on the classifier.
prediction <- predict(classifier, test, type = "class")
prediction # print the predicted class-label.
