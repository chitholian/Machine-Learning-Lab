setwd('/mnt/LinuxData/CSE/7th-Semester/CSE-716/Lab-Assignments/')
# Load the required libraries.
library(RWeka)
library(nnet)
# Input training and test datasets.
train <- read.csv(file.choose())
test <- read.csv(file.choose())
# Now train the classifier.
classifier <- nnet(buys_computer~., size=2, data = train)
# Predict on the classifier.
prediction <- predict(classifier, test, type = "class")
prediction # print the predicted class-label.
