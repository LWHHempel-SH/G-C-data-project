# G-C-data-project
Getting and Cleaning Data Project assignment
Readme
on ‘Getting and Cleaning Data Course Project’

Introduction and assignment
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
The data that needs to be transformed into tidy data is coming from an experiment that was carried out in order to measure human activity through the motion-sensing by smartphones. A description of this dataset can be found in a document, called CodeBook.md, stored in the same repository as this Readme.
A script, called ‘run_analysis.R’ has been developed in order to process the original dataset in such a way that the following requirements are met:
Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the data set
Appropriately label the data set with descriptive variable names.
From the data set in the previous step, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Process steps in the R script
Load the required data from the various dataset components.
Assumption: the complete dataset is available in the working directory under folder ‘UCI HAR Dataset’ and its sub-folders, as prepared by download according to the description in CodeBook.md

Merge the datasets derived from the files ‘X_train.txt’ and ‘X_test.txt’

Select from the merged dataset only those variables that are expressions of a mean or standard deviation of the measurements

Append descriptive activity names, derived from the files ‘y_train.txt’ and ‘y_test.txt’ to the measurements in the current dataset

Substitute variable names in the current dataset by descriptive names

Summarize the current dataset by calculating the average of each variable, grouped by activity and by subject

Write the dataset resulting from step 6 as a tidy dataset into the working directory under the name ‘tidy.txt’.
