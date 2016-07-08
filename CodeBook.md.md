Codebook on Human Activity Recognition Using Smartphones Dataset

Origin of the dataset
An experiment that was carried out in order to measure human activity through the motion-sensing by smartphones, has resulted in a set of recordings of sensor signals. 
The experiments have been carried out with a group of 30 volunteers, where each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz.

Based on the three dimensional raw signals of a recording within a certain time-window a number of features were derived or calculated that provide additional information about the human motion.
For each recording an activity label and the identifier of the subject who carried out the experiment was provided, in addition to the measurements from the accelerometer and the gyroscope plus the derived other variables. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Components of the dataset
The following files provide data that is relevant for the peer-graded assignment 	:
features.txt		a list of all 561 features / variables
activity_labels.txt	links the class labels with their activity name
train/X_train.txt	a set of training data (70% of initial dataset), contained in subfolder ‘train’
			7352 instances, 561 variables
train/y_train.txt		labels identifying the type of activity measured by the training data
test/X_test.txt		a set of test data (30% of initial dataset), contained in subfolder ‘test’
			2947 instances, 561 variables
test/y_test.txt		labels identifying the type of activity measured by the test data
train/subject_train.txt	each row identifies the subject who performed the activity for each window sample, as measured by the training data. Its range is from 1 to 30.
test/subject_test.txt	each row identifies the subject who performed the activity for each window sample, as measured by the test data. Its range is from 1 to 30.

Use of the dataset
Preparation of the Human Activity Recognition Using Smartphones Dataset can be done as follows:
Download zip-file from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Un-zip the downloaded zip-file and extract+rename into your working directory, resulting in file structure:
…/UCI HAR Dataset
with files ‘activity_labels.txt’, ‘features.txt’, ‘features_info.txt’ and ‘Readme.txt’
and subfolders
1)
…/UCI HAR Dataset/test
with files ‘subject_test.txt’, ‘X_test.txt’ and ‘y_test.txt’, and subfolder ‘Inertial Signals’
2) 
.../UCI HAR Dataset/training
with files ‘subject_training.txt’, ‘X_train.txt’ and ‘y_train.txt’, and subfolder ‘Inertial Signals’

The content of both subfolders ‘Inertial Signals’ will not be used for the assignment.
The .txt files in the folders ‘UCI HAR Dataset’ and its subfolders ‘test’ and ‘train’ will be used as input to the script in R that is to produce a tidy data set as outcome of the assignment. 
However, files ‘‘features_info.txt’ and ‘Readme.txt’ only provide supporting documentation and will not serve as input to the script.
Further information on the processing of the various elements of the data set in the context of the peer-graded assignment ‘Getting and Cleaning Data Course Project’ can be found in the Readme.md document.
