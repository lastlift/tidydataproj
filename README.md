# TidyData data set 

### Derived from Human Activity Recognition Using Smartphones Dataset:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

### Data set 'tidy_data.txt' is a summary of a the dataset above, grouped by 'subject' and 'activity'.

* 'subject' refers to a participant in the original study
* 'activity' refers to 6 activities that were performed and measured as part of the original study:

### From UCI's description of the original data set:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

and

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Information about tidydata dataset

The TidyData set is a compilation of the mean and standard deviation of each accelerometer measurement and organized by activity and by subject.  For each measurement taken in the original study, the data also includes a mean and a standard deviation measurement.  In the tidydata data set, we have extracted the mean and standard deviation from the original data set, and calculated the mean of all measurements taken, grouped by the activity and subject.

The origianl data set consists of a set of data labeled as 'test', and as 'train'. The tidydata data set, includes the data from both of these sets.

The methods involved to reduce and combine the original data set required several decisions to be made concerning the original data set.  Several columns contained references to some measured 'mean', but only the 'mean' and standard deviation of a like set of measurements is included in tidydata data set.

i.e.: fields like these were included:
```
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
 ```
while fields like:
```
fBodyBodyAccJerkMag-meanFreq()
```
were excluded.

### Loading the tidydata dataset

To load the tidydata data set, download tidy_data.txt and use the R command 'read.csv':
```
tidy_data <- read.csv("tidy_data.txt", header=TRUE, stringsAsFactor=FALSE)
```
The file contains 180 rows and 68 columns.  Each column is seperated by comma.  More information about the file columns can be found in the code book included in this repository.


### To re-create the tidydata dataset

To re-create the tidydata data set, download run_analysis.R, and the original data set from the link provided above.

```
> getwd()
[1] "C:/Dropbox/data-science/getting_and_cleaning_data/project/UCI HAR Dataset"
> source("run_analysis.R")

```



Upon un-zipping the dataset, a directory named 'UCI HAR Dataset' will be created.  This folder contains 2 sub-folders that contain the data files.  For the purposes of re-creating this dataset, the R working directory is assumed to be the directory 'UCI HAR Dataset'.

Run the run_analysis.R script, and the data set will be created in the working directory.


### Bibliography

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
