Please submit a link to a Github repo with the code for performing your analysis. The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. The output should be the tidy data set you submitted for part 1. You should include a README.md in the repo describing how the script works and the code book describing the variables.

To Do:
1. Create a Github repo
	Include 
		1. run_analysis.R file
		2. README.md file
		3. codebook
2. Submit link to repo on assignment page

## Download the file
#download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",destfile="project.zip",mode="wb")
# unzip the file in the working directory; this gives a directory "UCI HAR Dataset"
#unzip("project.zip") 

# The data is broken into 2 main groups:
# "training" (70% or 21 people/subjects) and "test" (30% or 9 subjects).
# It *appears* that raw accelerometer/gyroscope data is in the "Inertial Signals" subdirectory, with
# processed data with filtering etc applied is in the X_train.txt and X_test.txt files in the 
# "UCI HAR Dataset" directory

# X_train.txt has 561 columns, 7352 lines; 
# y_train.txt has 7352 lines, values from 1 to 6-- these are activity labels for training data
# subject_train.txt has 7352 lines-- these are subject labels for training data for 21 people

# X_test.txt has 561 col, 2947 lines
# y_test.txt has 2947 lines, values range from 1 to 6-- these are activity labels for test data
# subject_test.txt: 2947 lines-- these are subject labels for test data for 9 people

# features.txt has 561 column labels for the train and test data

