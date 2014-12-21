Repo: cleanData

This repo contains information, instructions, and an R script for constructing a clean and tidy data set for a human body motion study. The original data can be downloaded from the website of the Center for Machine Learning and Intelligent Systems at the University of California, Irvine at the following url:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original study is documented in the paper:

 		Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and 
		Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using 
		a Multiclass Hardware-Friendly Support Vector Machine. International 
		Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, 
		Spain. Dec 2012

The cleanData repo contains the following files:

	README.md (This file, describing the contents of the cleanData repo)
	codebook.md (describes how the tidy data set was generated from the original data)
	run_analysis.R (an R script to generate the tidy data set)

The run_analysis.R script assumes the data from the url given above has been downloaded and unzipped in the R working directory. (Additionally it is assumed that the packages required by run_analysis.R are loaded, e.g. library(reshape2)). The following R commands will create a data frame called "tidy" containing the data set:

source("run_analysis.R")
tidy<-run_analysis()

As assigned for the Cousera "Getting and Cleaning Data" class project, this script takes the files in the downloaded zip file and:

 		1. Merges the training and the test sets to create one data set.
 		2. Extracts only the measurements on the mean and standard deviation for 
			each measurement. 
		3. Uses descriptive activity names to name the activities in the data set
 		4. Appropriately labels the data set with descriptive variable names. 
		5. From the data set in step 4, creates a second, independent tidy data 
		   set with the average of each variable for each activity and each subject.

Details of the contents and format of the dataframe produced by the run_analysis script are given in the codebook.md file in this repo.