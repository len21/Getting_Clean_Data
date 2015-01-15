# Getting and Cleaning Data Project
This file is the help define the details of all the dataset.

## Input Data
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

Here are the data for the project: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] 

### Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The script assumes the UCI dataset is extracted directly into directory and unzip. Check the README.txt file for full details about this dataset.

#### Quick summary of that data set above

1. **features_info.txt**: Provides detail information about the signals measuresment used on the feature vector.
..* Informational file
2. **features.txt**: The files contains all the signals measurements. (Total of 561 rows)
..*	Col 1:Feature ID
..* Col 2:Feature Name
3. **activity_labels.txt**:The files contains the labels for activity ids  
..* Col 1: Activity ID: Numbers from 1-6
..* Col 2: Activity Name/Label: values are: WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING

There are 3 training files:
4. **X_train.txt**: Training set. The result for each of the 561 measurments aka columns (Total of 7352 rows)
..* Col 1-561 all of Type num
5. **y_train.txt**: Training Acitivty Id  for each Training set.(Total of 7352 rows)
..* Col 1: Acitvity ID, Type int
6. **subject_train.txt**:This file contains the subject (aka People) who performed the activity.
..* Col 1: Subject ID of type int range from 1-30 (Total of 7352 rows)

There are 3 test files:
7. **X_test.txt**: Test set.  The result for each of the 561 measurments aka columns (Total of 2947 rows)
..* Col 1-561 all of Type num
8. **y_test.txt**: Test Acitivty Id for each test sets.(Total of 2947 rows)
..* Col 1: Acitvity ID, Type int
9. **subject_test.txt**: This file contains the subject (aka People) who performed the activity.
..* Col 1: Subjec tID of type int range from 1-30 (Total of 2947 rows)

## Intermediate Data Set
* TestData (Merge all the Test data sets)
* TrainingData (Merge all the Training data sets)
* CombinedData (Merge of  TrainingData & TestData data sets)
* FinalData (Subset of FinalData)

## Final Output Data
* A text file called "tidy_data.txt"" is a data set which calculates the average of each variable for each activity id and each subject id.
* It includes all three X, Y, Z directions variables.
* All average variables are of type num
* All Id variables are of type int
* Activity Name is type factor


**There are 69 columns and the names are below:**
'data.frame':  10299 obs. of  69 variables:
 * ActivityId                 : int  
 * ActivityName               : Factor 
 * SubjectId                  : int  
 * tBodyAcc-mean()-X          : num  
 * tBodyAcc-mean()-Y          : num  
 * tBodyAcc-mean()-Z          : num  
 * tBodyAcc-std()-X           : num  
 * tBodyAcc-std()-Y           : num  
 * tBodyAcc-std()-Z           : num  
 * tGravityAcc-mean()-X       : num  
 * tGravityAcc-mean()-Y       : num  
 * tGravityAcc-mean()-Z       : num  
 * tGravityAcc-std()-X        : num  
 * tGravityAcc-std()-Y        : num  
 * tGravityAcc-std()-Z        : num  
 * tBodyAccJerk-mean()-X      : num  
 * tBodyAccJerk-mean()-Y      : num  
 * tBodyAccJerk-mean()-Z      : num  
 * tBodyAccJerk-std()-X       : num  
 * tBodyAccJerk-std()-Y       : num  
 * tBodyAccJerk-std()-Z       : num  
 * tBodyGyro-mean()-X         : num  
 * tBodyGyro-mean()-Y         : num  
 * tBodyGyro-mean()-Z         : num  
 * tBodyGyro-std()-X          : num  
 * tBodyGyro-std()-Y          : num  
 * tBodyGyro-std()-Z          : num  
 * tBodyGyroJerk-mean()-X     : num  
 * tBodyGyroJerk-mean()-Y     : num  
 * tBodyGyroJerk-mean()-Z     : num  
 * tBodyGyroJerk-std()-X      : num  
 * tBodyGyroJerk-std()-Y      : num  
 * tBodyGyroJerk-std()-Z      : num  
 * tBodyAccMag-mean()         : num  
 * tBodyAccMag-std()          : num  
 * tGravityAccMag-mean()      : num  
 * tGravityAccMag-std()       : num  
 * tBodyAccJerkMag-mean()     : num  
 * tBodyAccJerkMag-std()      : num  
 * tBodyGyroMag-mean()        : num  
 * tBodyGyroMag-std()         : num  
 * tBodyGyroJerkMag-mean()    : num  
 * tBodyGyroJerkMag-std()     : num  
 * fBodyAcc-mean()-X          : num  
 * fBodyAcc-mean()-Y          : num  
 * fBodyAcc-mean()-Z          : num  
 * fBodyAcc-std()-X           : num  
 * fBodyAcc-std()-Y           : num  
 * fBodyAcc-std()-Z           : num  
 * fBodyAccJerk-mean()-X      : num  
 * fBodyAccJerk-mean()-Y      : num  
 * fBodyAccJerk-mean()-Z      : num  
 * fBodyAccJerk-std()-X       : num  
 * fBodyAccJerk-std()-Y       : num  
 * fBodyAccJerk-std()-Z       : num  
 * fBodyGyro-mean()-X         : num  
 * fBodyGyro-mean()-Y         : num  
 * fBodyGyro-mean()-Z         : num  
 * fBodyGyro-std()-X          : num  
 * fBodyGyro-std()-Y          : num  
 * fBodyGyro-std()-Z          : num  
 * fBodyAccMag-mean()         : num  
 * fBodyAccMag-std()          : num  
 * fBodyBodyAccJerkMag-mean() : num  
 * fBodyBodyAccJerkMag-std()  : num  
 * fBodyBodyGyroMag-mean()    : num  
 * fBodyBodyGyroMag-std()     : num  
 * fBodyBodyGyroJerkMag-mean(): num  
 * fBodyBodyGyroJerkMag-std() : num  
 
 