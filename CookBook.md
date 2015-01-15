## Getting and Cleaning Data Project

 CookBook



# Input Data


The script assumes the UCI dataset is extracted directly into `./data/`. See the README.md for details.

Here is a quick summary of that data set

1.) features_info.txt': Provides detail information about the signals measuresment used on the feature vector.
2.) features.txt: The files contains all the signals measurements. (Total of 561 rows)
	Col1:Feature ID
        Col2:Feature Name
3.) activity_labels.txt':The files contains the labels for activity ids  
        Col1: Activity ID: Numbers from 1-6
        Col2: Activity Name/Label: values are: WALKING, WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING

There are 3 training files:
4.) X_train.txt': Training set. The result for each of the 561 measurments aka columns (Total of 7352 rows)
5.) y_train.txt': Training Acitivty Id for each Training set.(Total of 7352 rows)
6.) subject_train.txt This file contains the subject (aka People) who performed the activity.
        Col1: Subject ID :Number range from 1-30 (Total of 7352 rows)

There are 3 test files:
7.) X_test.txt': Test set.  The result for each of the 561 measurments aka columns (Total of 2947 rows)
8.) y_test.txt': Test Acitivty Id for each test sets.(Total of 2947 rows)
9.) subject_test.txt: This file contains the subject (aka People) who performed the activity.
        Col1: Subject ID :Number range from 1-30

# Output Data

A text file called /tidy_data.txt is a dataset includes mean and standard deviation variables for the following variables , listed below.
It includes all three X, Y, Z directions are included.



The 69 columns:
ActivityId 
ActivityName               
SubjectId                   
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
fBodyAccJerk-mean()-X       
fBodyAccJerk-mean()-Y       
fBodyAccJerk-mean()-Z      
fBodyAccJerk-std()-X        
fBodyAccJerk-std()-Y        
fBodyAccJerk-std()-Z        
fBodyGyro-mean()-X         
fBodyGyro-mean()-Y          
fBodyGyro-mean()-Z          
fBodyGyro-std()-X           
fBodyGyro-std()-Y          
fBodyGyro-std()-Z           
fBodyAccMag-mean()          
fBodyAccMag-std()           
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std()   
fBodyBodyGyroMag-mean()     
fBodyBodyGyroMag-std()      
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std() 