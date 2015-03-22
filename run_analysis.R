## -----------------------------------------------------------------------------
## run_analysis.R
## -----------------------------------------------------------------------------
##
##
## You should create one R script called run_analysis.R that does the following:
##
##  1. Merges the training and the test sets to create one data set.
##  2. Extracts only the measurements on the mean and standard deviation for 
##     each measurement.
##  3. Uses descriptive activity names to name the activities in the data set.
##  4. Appropriately labels the data set with descriptive variable names. 
##  5. From the data set in step 4, creates a second, independent tidy data set
##     with the average of each variable for each activity and each subject.
##
## -----------------------------------------------------------------------------

## load any required packages
library(dplyr)


## -----------------------------------------------------------------------------
##  1. Merge the training and the test sets to create one data set.
## -----------------------------------------------------------------------------

## first load the accelerometer measurement data sets:

test_data  <- 
    read.table("./test/X_test.txt", header=FALSE, stringsAsFactor=FALSE)
train_data <- 
    read.table("./train/X_train.txt", header=FALSE, stringsAsFactor=FALSE)

## load the activity data sets:

test_activity  <- read.csv("./test/y_test.txt", header=FALSE)
train_activity <- read.csv("./train/y_train.txt", header=FALSE)

## load the subject data sets:

test_subject  <- read.csv("./test/subject_test.txt", header=FALSE)
train_subject <- read.csv("./train/subject_train.txt", header=FALSE)


## combine to form one data frame containing all:

all_data <- rbind( cbind(test_subject,  test_activity,  test_data),
                   cbind(train_subject, train_activity, train_data) )

## dim(all_data)
## [1] 10299   563



## -----------------------------------------------------------------------------
##  2. Extract only the measurements on the mean and standard deviation for 
##     each measurement
## -----------------------------------------------------------------------------

## read in the measurement labels from features.txt:

measurement_names <- 
    read.table("features.txt", header=FALSE, stringsAsFactor=FALSE)[,2]

## update the names of the measurement columns:

names(all_data) <- c("subject", "activity", measurement_names)

## extract only the 'mean' and 'std deviation' values for the measurements

all_data <- all_data[grepl("subject|activity|mean\\(|std\\(", names(all_data))]

## dim(all_data)
## [1] 10299    68



## -----------------------------------------------------------------------------
##  3. Uses descriptive activity names to name the activities in the data set
## -----------------------------------------------------------------------------

## read in the activity labels from activity_labels.txt:

activity_names <- 
    read.table("activity_labels.txt", header=FALSE, stringsAsFactor=FALSE)

## update the activity column values to descriptive version:

all_data$activity <- 
    activity_names[ match(all_data$activity, activity_names$V1), 2]


## -----------------------------------------------------------------------------
##  4. Appropriately labels the data set with descriptive variable names.
## -----------------------------------------------------------------------------

## make names more readable: 
names(all_data) <- gsub("^f","f-", gsub("^t","t-",   names(all_data)))
names(all_data) <- gsub(",","-",   gsub("\\(\\)","", names(all_data)))
names(all_data) <- gsub("-",".",   names(all_data))


## -----------------------------------------------------------------------------
##  5. From the data set in step 4, creates a second, independent tidy data set 
##     with the average of each variable for each activity and each subject
## -----------------------------------------------------------------------------

## group the data set by activity and subject:
group_data <- all_data %>% group_by(activity, subject)

## create final df calculating mean of each column:
tidy_data <- group_data %>% summarise_each(funs(mean), matches("mean|std"))

## dim(tidy_data)
## [1] 180  68

## dump data to file for upload:
write.table(tidy_data, "tidy_data.txt", row.names=FALSE, col.names=TRUE, 
               sep=",", eol="\n")

## td <- read.csv("tidy_data.txt", header=TRUE, stringsAsFactor=FALSE)


