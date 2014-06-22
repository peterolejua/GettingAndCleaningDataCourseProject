---
# Human Activity Recognition Using Smartphones Dataset
---

### Repo items
In this Repo:

1. README.md:
 * Abstract
 * Data description
 * Data processing
 
2. CodeBook.md:
 * Naming the variables
 * Data dictionary
 
3. run_analysis.R:
 * It can be run as long as the Samsung data is in your working directory. The output is a tidy data set with the average of each variable for each activity and each subject.

---------
### Abstract
Experiments on Human Activity Recognition have been carried out with a group of people. Each person performed six activities wearing a smartphone on the waist. Using the smartphone embedded accelerometer and gyroscope, it was captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The Data was labeled manually after video-recording the experiments. The obtained data set has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


### Data description
These Data can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Inside you'll be able to find more information in its README file. A full description is available at this [site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) where the data was originally obtained.

It consists of different measurements taken while 30 people (Subjects: 1 to 30) were performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These are time domain signals (prefix 't' to denote time). The acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt' in the data folder.

### Data processing

The data was downloaded on Jun-17-2014. As it was split into training and test sets, these will be combined again in order to have the original data. From these merged data only the estimations on the mean and standard deviation for each measurement will be extracted. Then, in this set the activity names will be changed to more descriptive ones. The variable names will be overwritten to more appropriate ones. All of these steps are accomplished so we can create a second, independent tidy data set with the average of each variable (mean and std estimation) for each activity and each subject. 

Further details on this construction can be found on the "CodeBook.md" and to obtain this last tidy data set you can run "run_analysis.R", both found in this repo.




------
### Acknowledgement

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012