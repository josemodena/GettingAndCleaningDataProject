# --------------------------------------------------------------------------
# Coursera - Getting and Clearning Data - Peer Assessment
# 
# This R script processes the data set from the
# Human Activity Recognition Using Smartphones experiment
# (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
# and creates a tidy data set with the average of each variable for each
# activity and each subject.
#
# It assumes the original data set is downloaded from
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# and extracted to a folder on your local drive.
# No changes should be done in the structure of the extracted files.
# 
# This script should be executed from the folder where the data set was
# extracted to.
#
# This script requires the package 'reshape2' and it assumes its already
# installed.
# --------------------------------------------------------------------------

library(reshape2)

# 1. Merges the training and the test sets to create one data set.

Subject <- read.table("test/subject_test.txt")
Y <- read.table("test/y_test.txt")
X <- read.table("test/X_test.txt")
testData <- cbind(Subject, Y, X)

Subject <- read.table("train/subject_train.txt")
Y <- read.table("train/y_train.txt")
X <- read.table("train/X_train.txt")
trainData <- cbind(Subject, Y, X)

rm(Subject, Y, X)

mergedData <- rbind(testData, trainData)

rm(testData, trainData)

# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement. 

featureNames <- read.table("features.txt", as.is = TRUE)[, 2]
names(mergedData) <- c("subjectID", "activityID", featureNames)

meanStdCols <- grep("-mean\\(\\)|-std\\(\\)", featureNames)
meanStdCols <- meanStdCols + 2

mergedData <- mergedData[, c(1, 2, meanStdCols)]

rm(featureNames, meanStdCols)

# 3. Uses descriptive activity names to name the activities in the data set.

activityNames <- read.table("activity_labels.txt", as.is = TRUE, col.names = c("activityID", "activityName"))

# 4. Appropriately labels the data set with descriptive activity names. 

mergedData <- merge(activityNames, mergedData)

rm(activityNames)

# 5. Creates a second, independent tidy data set with the average of each
#    variable for each activity and each subject. 

mergedDataMelt <- melt(mergedData, id = c("activityID", "activityName", "subjectID"))
tidyData <- dcast(mergedDataMelt, activityName + subjectID ~ variable, mean)

write.table(tidyData, "tidy_dataset.txt")
