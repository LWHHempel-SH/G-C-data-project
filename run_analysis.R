# Purpose of this R script is to create a tidy dataset from data
# that was created as a result of an experiment that was carried out
# to measure human activity through the motion-sensing by smartphones.
# 
# A description of this dataset can be found in CodeBook.md, stored in the
# same repository as this script.
# In this repository also the README.md document can be found which
# provides a step-by-step description of this script. 


# Before running the script ensure that the correct working directory has been set 
# that contains the directory with the downloaded dataset (see CodeBook.md)

# plyr package must be loaded
library(plyr)

# Part 1: merge training data and test data into one dataset
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

train_data <- read.table('UCI HAR Dataset/train/X_train.txt')
train_act <- read.table('UCI HAR Dataset/train/y_train.txt')
train_subj <- read.table('UCI HAR Dataset/train/subject_train.txt')

test_data <- read.table('UCI HAR Dataset/test/X_test.txt')
test_act<-read.table('UCI HAR Dataset/test/y_test.txt')
test_subj <- read.table('UCI HAR Dataset/test/subject_test.txt')

# merge data parts of train and test data
all_data <- rbind(train_data, test_data)

# merge activities associated to train and test data
all_act <- rbind(train_act,test_act)

# merge subjects associated to train and test data
all_subj <- rbind(train_subj,test_subj)

# Part 2: extract only the measurements that relate to mean and standard deviation
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

all_features <- read.table('UCI HAR Dataset/features.txt')

# select only the features with mean or std in the name
select_features <- grep('-(mean|std)\\(\\)', all_features[,2])

# subset the required columns from the measurement data
mean_std_data <- all_data[,select_features]

# adjust column names
names(mean_std_data) <- all_features[select_features, 2]
                  

# Part 3: use descriptive activity names to name the activities in the data set
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                            
activities<- read.table('UCI HAR Dataset/activity_labels.txt')

# replace activity IDs by activity names
all_act[ ,1] <- activities[all_act[,1],2]

# adjust column name
names(all_act) <- 'activity'


# Part 4: Appropriately label the data set with descriptive variable name
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# adjust column name for subject
names(all_subj) <- 'subject'

# finally, bind all three components of the data into one dataset
final_set <- cbind(all_act,all_subj,mean_std_data)


# Part 5: Create a second independent tidy data set with the average of each variable
# for each activity and each subject
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# all 66 columns after the first two, activity and subject, must be submitted to average
tidy_set <- ddply(final_set, .(activity,subject), function(x) colMeans(x[,3:68]))
write.table(tidy_set, 'tidy.txt',row.name=FALSE)

