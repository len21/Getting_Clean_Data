## Getting and Cleaning Data Course Project

# This script will perform the following steps on the UCI HAR Dataset downloaded from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive activity names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

##########################################################################################################
# Clean up workspace
rm(list=ls())

#set working directory to the location where the UCI HAR Dataset was unzipped
setwd("C:\\Users\\Moira\\Documents\\DSClass\\DS3\\data\\UCI HAR Dataset")

library(dplyr)
library(data.table)
library(reshape2) # load the reshape2 package (will be used in STEP 5)


# Load all the various datasets so they can be work with
Test_Subject <- read.table("./test/subject_test.txt")
Test_X <- read.table("./test/X_test.txt") # Test set
Test_Y <- read.table("./test/y_test.txt") # Test labels 1-6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Train_Subject <- read.table("./train/subject_train.txt") # hold the subject who performed the activity. Its range is from 1 to 30. 
Train_X <- read.table("./train/X_train.txt") # Training set
Train_Y <- read.table("./train/y_train.txt") # Training labels: 1-6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Features_Labels <- read.table("./features.txt")
Activity_Labels <- read.table("./activity_labels.txt")

## Rename columns so it is easier to understand the data
colnames(Train_Y) = "ActivityId"
colnames(Test_Y)  = "ActivityId"

colnames(Test_Subject) ="SubjectId"
colnames(Train_Subject) ="SubjectId"

## Rename all the columns using info from the cookbook and feature file
colnames(Train_X) = Features_Labels[,2]
colnames(Test_X) = Features_Labels[,2]

colnames(Features_Labels)  = c('FeatureId','FeatureName')
colnames(Activity_Labels)  = c('ActivityId','ActivityName')

# Merge all the training tables into a new table (aka People, activities and values)
TrainingData = cbind(Train_Subject, Train_Y ,Train_X )
# Merge all the Test tables into a new table (aka People, activities and values)
TestData = cbind(Test_Subject, Test_Y ,Test_X )

# STEP 1 :Combine training and test data to create a conbined data set
CombinedData = rbind(TrainingData, TestData)

# Create a list for the column names from the CombinedData, which will be used
# to select the desired mean() & std() columns
CombinedDataColNames  = colnames(CombinedData)

# STEP 2: Extract only the measurements on the mean and standard deviation for each measurement. 
# Create a logicalVector that contains TRUE values for the IDs, mean() and std() columns and FALSE for others
logicalVector = (grepl("SubjectId",CombinedDataColNames) | grepl("ActivityId",CombinedDataColNames) |
                 grepl("-mean\\()",CombinedDataColNames) | grepl("-std\\()",CombinedDataColNames) )

# creata a new table table based on the logicalVector to keep only desired columns
FinalData = CombinedData[logicalVector==TRUE]

# STEP 3 & 4: Add the Activity Type label from the text file in Activity_Labels
FinalData = merge(Activity_Labels,FinalData,by='ActivityId',all.x=TRUE)

# STEP 5: Creates a tidy data set with the mean for each variable for each activity and each subject.
MeltedData <- melt(FinalData, id=1:3)
TidyData <- dcast(MeltedData, ActivityId + ActivityName + SubjectId  ~ variable, mean)

# write out the tidy data set to a file, to the git location for syncing back up to github
write.table(TidyData, file = "C:\\Users\\Moira\\Getting_Clean_Data\\tidy_data.txt")
