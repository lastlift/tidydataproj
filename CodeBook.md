# See below for a description of the columns found in tiny_data.txt.

### Tidydata data set is based on 'Human Activity Recognition Using Smartphones Dataset' supplied by University California Irvine.  Use of this data is granted per the following:

>Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 


### Tidydata notes

The tidydata data set contains 180 rows,and 68 columns.  The rows are grouped by activity, and subject (see below for more information on these columns).  This data set is called 'tidydata' in an effort to demonstrate characteristics of 'tidy' data; such that:


* Each measured variable is in one column
* Each observation of that variable is contained in a different row
* There is one table for each kind of measurement
* A row at the top of the file containing variable names
* One file per table


### Tidydata generation

The tinydata data set is compiled from the original data set in the following manner:

* The original data provided was organized into 2 distinct sets: 'test' and 'train'.  These sets were combined into a single table of values
* The activity and subject columns were inserted into the first two columns of the table, to be used for grouping at a later stage.
* The table was condensed by extracting only the columns that referred to a mean or standard deviation calculation for a particular measurement.
* The table was further condensed by providing a tidy view of the mean of each type of measurement, grouped by the activity and the subject from the study


### Measurements Units

All measurement values in x, y, z direction are in standard gravity units 'g'.

All angular measurement values are of units radians/second.


### Measurements are noted as being of 2 types (first character in the column name):

  t = time measurement
  f = Fourier transform measurement
    
### Column order, type, name, and column description:    

Order:  Type:   Column name:                Description:
                                            
1       chr     activity                    activity being performed

2       int     subject                      identifies the subject who performed the activity for each window sample. range is from 1 to 30.

3     num      t.BodyAcc.mean.X             mean body acceleration, x direction

4     num      t.BodyAcc.mean.Y             mean body acceleration, y direction

5     num      t.BodyAcc.mean.Z             mean body acceleration, z direction

6     num      t.BodyAcc.std.X              standard deviation body acceleration, x direction

7     num      t.BodyAcc.std.Y              standard deviation body acceleration, y direction

8     num      t.BodyAcc.std.Z              standard deviation body acceleration, z direction

9     num      t.GravityAcc.mean.X          mean gravitational acceleration, x direction 

10    num      t.GravityAcc.mean.Y          mean gravitational acceleration, y direction

11    num      t.GravityAcc.mean.Z          mean gravitational acceleration, z direction 

12    num      t.GravityAcc.std.X           standard deviation gravitational acceleration, x direction

13    num      t.GravityAcc.std.Y           standard deviation gravitational acceleration, y direction

14    num      t.GravityAcc.std.Z           standard deviation gravitational acceleration, z direction

15    num      t.BodyAccJerk.mean.X         mean body acceleration jerk, x direction

16    num      t.BodyAccJerk.mean.Y         mean body acceleration jerk, y direction

17    num      t.BodyAccJerk.mean.Z         mean body acceleration jerk, z direction

18    num      t.BodyAccJerk.std.X          standard deviation body acceleration jerk, x direction

19    num      t.BodyAccJerk.std.Y          standard deviation body acceleration jerk, y direction

20    num      t.BodyAccJerk.std.Z          standard deviation body acceleration jerk, z direction

21    num      t.BodyGyro.mean.X            mean body angular acceleration, x direction

22    num      t.BodyGyro.mean.Y            mean body angular acceleration, y direction

23    num      t.BodyGyro.mean.Z            mean body angular acceleration, z direction

24    num      t.BodyGyro.std.X             standard deviation body angular acceleration, x direction

25    num      t.BodyGyro.std.Y             standard deviation body angular acceleration, y direction

26    num      t.BodyGyro.std.Z             standard deviation body angular acceleration, z direction

27    num      t.BodyGyroJerk.mean.X        mean body angular acceleration jerk, x direction

28    num      t.BodyGyroJerk.mean.Y        mean body angular acceleration jerk, y direction

29    num      t.BodyGyroJerk.mean.Z        mean body angular acceleration jerk, z direction

30    num      t.BodyGyroJerk.std.X         standard deviation body angular acceleration jerk, x direction

31    num      t.BodyGyroJerk.std.Y         standard deviation body angular acceleration jerk, y direction

32    num      t.BodyGyroJerk.std.Z         standard deviation body angular acceleration jerk, z direction

33    num      t.BodyAccMag.mean            mean body acceleration magnitude

34    num      t.BodyAccMag.std             standard deviation body acceleration magnitude

35    num      t.GravityAccMag.mean         mean gravitational acceleration magnitude

36    num      t.GravityAccMag.std          standard deviation gravitational acceleration magnitude

37    num      t.BodyAccJerkMag.mean        mean body acceleration jerk magnitude

38    num      t.BodyAccJerkMag.std         standard deviation body jerk acceleration magnitude

39    num      t.BodyGyroMag.mean           mean body angular acceleration magnitude

40    num      t.BodyGyroMag.std            standard deviation angular acceleration magnitude

41    num      t.BodyGyroJerkMag.mean       mean body angular acceleration jerk magnitude

42    num      t.BodyGyroJerkMag.std        standard deviation angular acceleration jerk magnitude

43    num      f.BodyAcc.mean.X             mean body acceleration, x direction

44    num      f.BodyAcc.mean.Y             mean body acceleration, y direction

45    num      f.BodyAcc.mean.Z             mean body acceleration, z direction

46    num      f.BodyAcc.std.X              standard deviation body acceleration, x direction

47    num      f.BodyAcc.std.Y              standard deviation body acceleration, y direction

48    num      f.BodyAcc.std.Z              standard deviation body acceleration, z direction

49    num      f.BodyAccJerk.mean.X         mean body acceleration jerk, direction

50    num      f.BodyAccJerk.mean.Y         mean body acceleration jerk, y direction

51    num      f.BodyAccJerk.mean.Z         mean body acceleration jerk, z direction

52    num      f.BodyAccJerk.std.X          standard deviation body acceleration jerk, x direction

53    num      f.BodyAccJerk.std.Y          standard deviation body acceleration jerk, y direction

54    num      f.BodyAccJerk.std.Z          standard deviation body acceleration jerk, z direction

55    num      f.BodyGyro.mean.X            mean body angular acceleration, x direction

56    num      f.BodyGyro.mean.Y            mean body angular acceleration, y direction

57    num      f.BodyGyro.mean.Z            mean body angular acceleration, z direction

58    num      f.BodyGyro.std.X             standard deviation body angular acceleration, x direction

59    num      f.BodyGyro.std.Y             standard deviation body angular acceleration, y direction

60    num      f.BodyGyro.std.Z             standard deviation body angular acceleration, z direction

61    num      f.BodyAccMag.mean            mean body acceleration magnitude

62    num      f.BodyAccMag.std             standard deviation body acceleration magnitude

63    num      f.BodyBodyAccJerkMag.mean    mean body acceleration jerk magnitude

64    num      f.BodyBodyAccJerkMag.std     standard deviation body acceleration jerk magnitude

65    num      f.BodyBodyGyroMag.mean       mean body angular acceleration magnitude

66    num      f.BodyBodyGyroMag.std        standard deviation body angular acceleration magnitude

67    num      f.BodyBodyGyroJerkMag.mean   mean body body angular acceleration jerk magnitude

68    num      f.BodyBodyGyroJerkMag.std    standard deviation body angular acceleration jerk magnitude

