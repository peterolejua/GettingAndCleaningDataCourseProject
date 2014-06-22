---
# Human Activity Recognition Using Smartphones Dataset
---
Please see first "README.md" in this repo.

## "FinalTidyData.txt" codebook
Suppose that in your R working directory you have the Samsung data (UCI HAR Dataset). The result of running the R-script "run_analysis.R" will be a data set named here as "FinalTidyData.txt". This is a data frame with 180 obs. and 68 variables. Features are normalized and bounded within [-1,1]. Here a description to these variable names (68 column names) is given.

1. "Subject": Each of the 30 people involved in the experiment have a unique id (1...30). The ids are found in "UCI HAR Dataset/train/subject_train.txt" for the training set and in "UCI HAR Dataset/test/subject_test.txt" for the test set.
 
2. "Activity": The activity a person was doing while the measurements were taken. The activities are found in "UCI HAR Dataset/train/y_train.txt" and in "UCI HAR Dataset/test/y_test.txt" for the training and test sets, respectively.
 

Also, the measurements for each set can be found in "UCI HAR Dataset/train/X_train.txt" and "UCI HAR Dataset/test/X_test.txt". Because of parentheses are used for function calls and minus is used for subtraction in R, the characters "()" and "-" were replaced by "" (Empty space) and "\\_", respectively.  Only the estimations on the mean and standard deviation of the features were considered (see README.md in this repo) and they were named as follows:

3. "tBodyAcc_mean_X"
4. "tBodyAcc_mean_Y"
5. "tBodyAcc_mean_Z"
6. "tGravityAcc_mean_X"
7. "tGravityAcc_mean_Y"
8. "tGravityAcc_mean_Z"
9. "tBodyAccJerk_mean_X"      
10. "tBodyAccJerk_mean_Y"
11. "tBodyAccJerk_mean_Z"
12. "tBodyGyro_mean_X"  
13. "tBodyGyro_mean_Y"
14. "tBodyGyro_mean_Z" 
15. "tBodyGyroJerk_mean_X"     
16. "tBodyGyroJerk_mean_Y"
17. "tBodyGyroJerk_mean_Z"
18. "tBodyAccMag_mean"
19. "tGravityAccMag_mean"
20. "tBodyAccJerkMag_mean" 
21. "tBodyGyroMag_mean"        
22. "tBodyGyroJerkMag_mean"  
23. "fBodyAcc_mean_X"       
24. "fBodyAcc_mean_Y"          
25. "fBodyAcc_mean_Z"
26. "fBodyAccJerk_mean_X" 
27. "fBodyAccJerk_mean_Y"      
28. "fBodyAccJerk_mean_Z" 
29. "fBodyGyro_mean_X"  
30. "fBodyGyro_mean_Y"         
31. "fBodyGyro_mean_Z"   
32. "fBodyAccMag_mean"  
33. "fBodyBodyAccJerkMag_mean" 
34. "fBodyBodyGyroMag_mean" 
35. "fBodyBodyGyroJerkMag_mean" 
36. "tBodyAcc_std_X"           
37. "tBodyAcc_std_Y" 
38. "tBodyAcc_std_Z"     
39. "tGravityAcc_std_X"        
40. "tGravityAcc_std_Y" 
41. "tGravityAcc_std_Z" 
42. "tBodyAccJerk_std_X"       
43. "tBodyAccJerk_std_Y" 
44. "tBodyAccJerk_std_Z"  
45. "tBodyGyro_std_X"          
46. "tBodyGyro_std_Y" 
47. "tBodyGyro_std_Z" 
48. "tBodyGyroJerk_std_X"      
49. "tBodyGyroJerk_std_Y"    
50. "tBodyGyroJerk_std_Z" 
51. "tBodyAccMag_std"          
52. "tGravityAccMag_std" 
53. "tBodyAccJerkMag_std" 
54. "tBodyGyroMag_std"         
55. "tBodyGyroJerkMag_std"    
56. "fBodyAcc_std_X"        
57. "fBodyAcc_std_Y"           
58. "fBodyAcc_std_Z"   
59. "fBodyAccJerk_std_X"        
60. "fBodyAccJerk_std_Y"       
61. "fBodyAccJerk_std_Z"        
62. "fBodyGyro_std_X"           
63. "fBodyGyro_std_Y"          
64. "fBodyGyro_std_Z"           
65. "fBodyAccMag_std"
66. "fBodyBodyAccJerkMag_std"  
67. "fBodyBodyGyroMag_std"   
68. "fBodyBodyGyroJerkMag_std" 


We found this names to be descriptive enough because the can be read as next:

* "f" and "t" stand for frequency domain signals and for time domain signals respectively. And "f" also indicates that the Fast Fourier Transform was applied.

* "Body" and "Gravity" tell us weather we have body acceleration or gravity acceleration signals.

* "Acc" and "Gyro" indicates where the accelerations come from, the accelerometer or the gyroscope.

* "Jerk" says when the body linear acceleration and angular velocity were derived in time

* "Mag" means that the Euclidean norm was used to calculate the the magnitude of the signals

* "mean" and "std" are for the estimation of the mean and standard deviation respectively.

* And because of these are 3-axial raw signals we have "X", "Y" and "Z".