Introduction
=====

This code book describes the variables and the data in the [tidy data set](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/tidy_dataset.txt) and the transformations performed to clean it up from the [raw data set](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/UCI%20HAR%20Dataset.zip).


Raw Data Set
=====

The raw data set used for this project was obtained from the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). It represents data collected from the accelerometers of the Samsung Galaxy S smartphone.

A full description of the raw data set and the experiment that collected it is available at the [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) from where it was obtained.


Tidy Data Set
=====

The tidy data set was generated from processing the raw data set by running the `R` script [run_analysis.R](https://github.com/josemodena/GettingAndCleaningDataProject/blob/master/run_analysis.R).

The tidy data set is a summary of the raw data set. Multiple observations of the same subject performing the same activity were conducted in the experiment and recorded on the raw data set. The tidy data set has only one observation for each (activity, subject) pair, which contains the average of each mean and standard deviation measurement for the (activity, subject) pair.

As a result, there are 180 observations in the tidy data set: 6 activities x 30 subjects.

### Transformations to clean up the raw data set

The following transformations were performed on the raw data set to clean it up and create the tidy data set:

1. The raw training and test data files were combined creating a single data set.
2. The activity, subject and all the variables representing the mean and standard deviation for each measurement were selected. All other variables were discarded.
3. The content of the activity variable, which originally was an identifier in the raw data set, was replaced by descriptive texts.
4. The average of each mean and standard deviation variable was calculated for each (activity, subject) pair.
5. The tidy data set was created containing a row for each activity, subject and the averages of each mean and standard deviation variables.

Please refer to the R script run_analysis.R for the exact transformations.

### Variables in the tidy data set

activityName
* description: activity performed by the subject
* format: categorical

subjectID
* description: identifier of the subject who carried out the experiment
* format: ordinal

tBodyAcc-mean()-X
* description: average of mean value of time domain body acceleration in X axis
* format: continuous

tBodyAcc-mean()-Y
* description: average of mean value of time domain body acceleration in Y axis
* format: continuous

tBodyAcc-mean()-Z
* description: average of mean value of time domain body acceleration in Z axis
* format: continuous

tBodyAcc-std()-X
* description: average of standard deviation value of time domain body acceleration in X axis
* format: continuous

tBodyAcc-std()-Y
* description: average of standard deviation value of time domain body acceleration in Y axis
* format: continuous

tBodyAcc-std()-Z
* description: average of standard deviation value of time domain body acceleration in Z axis
* format: continuous

tGravityAcc-mean()-X
* description: average of mean value of time domain gravity acceleration in X axis
* format: continuous

tGravityAcc-mean()-Y
* description: average of mean value of time domain gravity acceleration in Y axis
* format: continuous

tGravityAcc-mean()-Z
* description: average of mean value of time domain gravity acceleration in Z axis
* format: continuous

tGravityAcc-std()-X
* description: average of standard deviation value of time domain gravity acceleration in X axis
* format: continuous

tGravityAcc-std()-Y
* description: average of standard deviation value of time domain gravity acceleration in Y axis
* format: continuous

tGravityAcc-std()-Z
* description: average of standard deviation value of time domain gravity acceleration in Z axis
* format: continuous

tBodyAccJerk-mean()-X
* description: average of mean value of time domain body acceleration jerk in X axis
* format: continuous

tBodyAccJerk-mean()-Y
* description: average of mean value of time domain body acceleration jerk in Y axis
* format: continuous

tBodyAccJerk-mean()-Z
* description: average of mean value of time domain body acceleration jerk in Z axis
* format: continuous

tBodyAccJerk-std()-X
* description: average of standard deviation value of time domain body acceleration jerk in X axis
* format: continuous

tBodyAccJerk-std()-Y
* description: average of standard deviation value of time domain body acceleration jerk in Y axis
* format: continuous

tBodyAccJerk-std()-Z
* description: average of standard deviation value of time domain body acceleration jerk in Z axis
* format: continuous

tBodyGyro-mean()-X
* description: average of mean value of time domain body angular velocity in X axis
* format: continuous

tBodyGyro-mean()-Y
* description: average of mean value of time domain body angular velocity in Y axis
* format: continuous

tBodyGyro-mean()-Z
* description: average of mean value of time domain body angular velocity in Z axis
* format: continuous

tBodyGyro-std()-X
* description: average of standard deviation value of time domain body angular velocity in X axis
* format: continuous

tBodyGyro-std()-Y
* description: average of standard deviation value of time domain body angular velocity in Y axis
* format: continuous

tBodyGyro-std()-Z
* description: average of standard deviation value of time domain body angular velocity in Z axis
* format: continuous

tBodyGyroJerk-mean()-X
* description: average of mean value of time domain body angular velocity jerk in X axis
* format: continuous

tBodyGyroJerk-mean()-Y
* description: average of mean value of time domain body angular velocity jerk in Y axis
* format: continuous

tBodyGyroJerk-mean()-Z
* description: average of mean value of time domain body angular velocity jerk in Z axis
* format: continuous

tBodyGyroJerk-std()-X
* description: average of standard deviation value of time domain body angular velocity jerk in X axis
* format: continuous

tBodyGyroJerk-std()-Y
* description: average of standard deviation value of time domain body angular velocity jerk in Y axis
* format: continuous

tBodyGyroJerk-std()-Z
* description: average of standard deviation value of time domain body angular velocity jerk in Z axis
* format: continuous

tBodyAccMag-mean()
* description: average of mean value of time domain body acceleration magnitude
* format: continuous

tBodyAccMag-std()
* description: average of standard deviation value of time domain body acceleration magnitude
* format: continuous

tGravityAccMag-mean()
* description: average of mean value of time domain gravity acceleration magnitude
* format: continuous

tGravityAccMag-std()
* description: average of standard deviation value of time domain gravity acceleration magnitude
* format: continuous

tBodyAccJerkMag-mean()
* description: average of mean value of time domain body acceleration jerk magnitude
* format: continuous

tBodyAccJerkMag-std()
* description: average of standard deviation value of time domain body acceleration jerk magnitude
* format: continuous

tBodyGyroMag-mean()
* description: average of mean value of time domain body angular velocity magnitude
* format: continuous

tBodyGyroMag-std()
* description: average of standard deviation value of time domain body angular velocity magnitude
* format: continuous

tBodyGyroJerkMag-mean()
* description: average of mean value of time domain body angular velocity jerk magnitude
* format: continuous

tBodyGyroJerkMag-std()
* description: average of standard deviation value of time domain body angular velocity jerk magnitude
* format: continuous

fBodyAcc-mean()-X
* description: average of mean value of frequency domain body acceleration in X axis
* format: continuous

fBodyAcc-mean()-Y
* description: average of mean value of frequency domain body acceleration in Y axis
* format: continuous

fBodyAcc-mean()-Z
* description: average of mean value of frequency domain body acceleration in Z axis
* format: continuous

fBodyAcc-std()-X
* description: average of standard deviation value of frequency domain body acceleration in X axis
* format: continuous

fBodyAcc-std()-Y
* description: average of standard deviation value of frequency domain body acceleration in Y axis
* format: continuous

fBodyAcc-std()-Z
* description: average of standard deviation value of frequency domain body acceleration in Z axis
* format: continuous

fBodyAccJerk-mean()-X
* description: average of mean value of frequency domain body acceleration jerk in X axis
* format: continuous

fBodyAccJerk-mean()-Y
* description: average of mean value of frequency domain body acceleration jerk in Y axis
* format: continuous

fBodyAccJerk-mean()-Z
* description: average of mean value of frequency domain body acceleration jerk in Z axis
* format: continuous

fBodyAccJerk-std()-X
* description: average of standard deviation value of frequency domain body acceleration jerk in X axis
* format: continuous

fBodyAccJerk-std()-Y
* description: average of standard deviation value of frequency domain body acceleration jerk in Y axis
* format: continuous

fBodyAccJerk-std()-Z
* description: average of standard deviation value of frequency domain body acceleration jerk in Z axis
* format: continuous

fBodyGyro-mean()-X
* description: average of mean value of frequency domain body angular velocity in X axis
* format: continuous

fBodyGyro-mean()-Y
* description: average of mean value of frequency domain body angular velocity in Y axis
* format: continuous

fBodyGyro-mean()-Z
* description: average of mean value of frequency domain body angular velocity in Z axis
* format: continuous

fBodyGyro-std()-X
* description: average of standard deviation value of frequency domain body angular velocity in X axis
* format: continuous

fBodyGyro-std()-Y
* description: average of standard deviation value of frequency domain body angular velocity in Y axis
* format: continuous

fBodyGyro-std()-Z
* description: average of standard deviation value of frequency domain body angular velocity in Z axis
* format: continuous

fBodyAccMag-mean()
* description: average of mean value of frequency domain body acceleration magnitude
* format: continuous

fBodyAccMag-std()
* description: average of standard deviation value of frequency domain body acceleration magnitude
* format: continuous

fBodyBodyAccJerkMag-mean()
* description: average of mean value of frequency domain body acceleration jerk magnitude
* format: continuous

fBodyBodyAccJerkMag-std()
* description: average of standard deviation value of frequency domain body acceleration jerk magnitude
* format: continuous

fBodyBodyGyroMag-mean()
* description: average of mean value of frequency domain body angular velocity magnitude
* format: continuous

fBodyBodyGyroMag-std()
* description: average of standard deviation value of frequency domain body angular velocity magnitude
* format: continuous

fBodyBodyGyroJerkMag-mean()
* description: average of mean value of frequency domain body angular velocity jerk magnitude
* format: continuous

fBodyBodyGyroJerkMag-std()
* description: average of standard deviation value of frequency domain body angular velocity jerk magnitude
* format: continuous
