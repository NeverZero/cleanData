## run_analysis.R 
## Execution example: tidy<-run_analysis()
##
## This script returns a tidy data set (data frame) as described in the README.md
## file in the cleanData repo. 

run_analysis<- function() {
	# Read the training and test data with delimiter=whitespace and no header
	train<-read.csv(file="./UCI HAR Dataset/train/X_train.txt",sep="",
		colClasses="character",header=FALSE)
	test<-read.csv(file="./UCI HAR Dataset/test/X_test.txt",sep="",
		colClasses="character",header=FALSE) 

	# Read the descriptive column names in the file features.txt, 
	# use newline separator
	feat<-read.csv(file="./UCI HAR Dataset/features.txt",sep="\n",
		colClasses="character",header=FALSE)
	# Read the numerical activity labels for test and training data
	actTest<-read.csv(file="./UCI HAR Dataset/test/y_test.txt",sep="\n",
		colClasses="character",header=FALSE)
	actTrain<-read.csv(file="./UCI HAR Dataset/train/y_train.txt",sep="\n",
		colClasses="character",header=FALSE)
	# Read the descriptive activity labels for test and training data
	descLabels<-read.csv(file="./UCI HAR Dataset/activity_labels.txt",sep="\n",
		colClasses="character",header=FALSE)
	# Read the subject labels for test and training data
	subjTest<-read.csv(file="./UCI HAR Dataset/test/subject_test.txt",sep="\n",
		colClasses="character",header=FALSE)
	subjTrain<-read.csv(file="./UCI HAR Dataset/train/subject_train.txt",sep="\n",
		colClasses="character",header=FALSE)

	# Merge the training and test data; there will be 10299 lines of data
	data<-rbind(train,test)	
	# Merge the numerical activity label vectors
	activity<-c(actTrain[[1]],actTest[[1]])
	# Remove the leading digit from the descriptive activity labels
	descLabels<-gsub("[[:digit:]][[:blank:]]","",descLabels[,]) 
	# Merge the subject label vectors
	subject<-c(subjTrain[[1]],subjTest[[1]])
	# Create a vector of descriptive activity labels based on the numerical labels
	for(i in 1:length(activity)) activity[i]<-descLabels[as.integer(activity[i])]

	# Add the column names from the features.txt file to the dataset
	# Remove the leading digits; not needed
	feat<-gsub("[[:digit:]]{1,3}[[:blank:]]","",feat[,]) 
	# Remove parentheses
	feat<-gsub("\\(\\)","",feat)
	names(data)<-feat
	# Add a column for the subject labels on left
	data<-cbind(subject,data)
	# Add a column for the descriptive activity labels, left joined
	data<-cbind(activity,data)

	# Subset the mean and standard deviation data for each measurement; 
	# these have the substrings "mean" and "std" in them.
	data<-data[,sort(c(1,2,grep("std",names(data)),grep("mean",names(data))))]

	# Reshape the dataset
	# Start by melting it. Note: this requires library(reshape2)
	dmelt<-melt(data,id=c("activity","subject"),measure.vars=)
	# Define a new mean function to pass to dcast
	mymean<-function(x){mean(as.numeric(x))} 
	# Cast it with subject and activity as first columns vs 
	# the means of the variable columns
	tidy<-dcast(dmelt, subject+activity~variable, mymean)

	# Write out the tidy dataset as a text file
	#write.table(tidy,"tidyData.txt",row.name=FALSE) 

	# return tidy data
	tidy
}