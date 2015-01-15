# Getting and Cleaning Data - Course Project
This Repo is for the submission of the course project for the Johns Hopkins Getting and Cleaning Data course 2015.
This "readme.md"" file will help explain what is happening in the "run_analysis.R" file.

## Overview
This project serves to demonstrate the collection and cleaning of a tidy data set that can be used for subsequent
analysis. A full description of the data used in this project can be found at "CookBook.md"

## Project Summary
The following is a summary description of the project instructions.

You should create one R script called run_analysis.R that does the following. 
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive activity names. 
 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Additional Information about my script and process
Here is the logical progression I followed in my run_analysis.R file.
 1. Initial steps, clean up work space, set working directory and load packages needed for this work.
 2. Load all the data sets that are required.
 3. Rename all the columns using information from the cookbook and features file.
 4. Merge all the Training data sets into a new table called TrainingData.  (aka People, activities and values)
 5. Merge all the Test data sets into a new table called Test Data. (aka People, activities and values)
 6. Combine training and test data sets into a single one called CombinedData.
 7. Create a list for the column names from the CombinedData, which will be used to select the desired mean() & std() columns.
 8. Create a logical vector that contains the TRUE values for the IDs, mean() and std() columns and FALSE for others.
 9. Create a new table table called FinalData based on the logical Vector to keep only the desired columns.
10. Add the Activity Type label from the text file in Activity_Labels to the FinalData data set.
11. Create a new tidy data set with the mean for each variable for each activity and each subject based of the FinalData data set.
12. Write out the tidy data set to a file, for syncing back up to Github.

These 12 steps over project instruction and requirements above.