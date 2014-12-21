codebook.md

This file is the codebook that describes the dataset created by the run_analysisR script in the cleanData repo. Information on how to use run_analysis.R are in the README.md file.

The original data used to produce the clean and tidy data set described in this codebook can be downloaded and unzipped locally into the R working directory by the following R code:

## Download the file
download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
	destfile="project.zip",mode="wb")
## unzip the file in the working directory; this gives a directory "UCI HAR Dataset"
unzip("project.zip") 

The original data of interest is broken into 2 main groups: "training" data from 70% of the total of 30 human subjects (21 people/subjects) and "test" data (for the remaining 9 subjects). Each subject is labelled with a number, 1-30. For each of the 30 subjects, there is data for each of six activities (standing, walking, etc). The data is stored in the files X_train.txt and X_test.txt. The data in these files consists of 561 columns of numeric data, representing filtered time or frequency domain accelerometer and gyroscope data in each of three spacial dimensions (X, Y, or Z), or data derived from these such as mean and standard deviation. The labels for subject, activity, and variables are each in separate files. Further details of original data can be found in the documentation that is included in the downloaded zip file.

From the original data and files, the run_analysis.R script in this repo produces a clean and tidy data set (data frame). This data set contains 180 observations of variables in 81 columns. Of the columns, 79 are a subset of the original 561 columns. Only those columns of the originals with mean or standard deviation information have been retained. In addition, the original data rows for each subject/activity combination have been averaged to produce the final data set. Two columns have been added to the original data set to identify subject and activity for each of the row entries. Column names have also been added. These have been derived from the variable names listed in the "features.txt" file of the original data. For these column names, a leading 't' indicates a time domain variable and a leading 'f' indicates a frequency variable.

The following is a list of all the variables (column) names in the tidy data set:

subject- the number assigned to the subject producing measurements
activity- the activity for which the measurements were made (e.g. walking, standing, etc.)
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()
