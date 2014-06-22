# Load the needed libraries
library(plyr)



# Load and Reconstruct Training Set.
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
trainData = cbind(subject_train,y_train,x_train)

# Load and Reconstruct Test Set.
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
testData = cbind(subject_test,y_test,x_test)



# 1- Merges the training and the test sets to create one data set.
data = rbind(trainData,testData)



## 2- Extracts only the measurements on the mean and standard deviation
## for each measurement.

# First read all the features (measurements)
features <- read.table("UCI HAR Dataset/features.txt")

# Select those features that contain the pattern "mean()"
meanIndex = grep("mean\\(\\)",features[,2])

# Select those features that contain the pattern "std()"
stdIndex = grep("std\\(\\)",features[,2])

# Subset the indicated features from data
mean_std_data = data[,c(1,2,meanIndex+2,stdIndex+2)]



## 3- Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
mean_std_data[,2] = activity_labels[mean_std_data[,2],2]



## 4- Appropriately labels the data set with descriptive variable names.

# Let's create a vector of names starting with (Subject, Activity)
vNames = c("Subject", "Activity")

# Then we create the names for the measurements on the mean and standard deviation
# for each measurement.
# Because parenthesis "()" are used for function calls and minus "-" is used for 
# subtraction, first we need to read the features as characacter:
vNames[1:33+2] = as.character(features[meanIndex,2])
vNames[1:33+35] = as.character(features[stdIndex,2])
# And then need to eliminate them:
cleanVNames = gsub("\\(\\)",replacement="",x=vNames)
cleanVNames = gsub("-",replacement="_",x=cleanVNames)
# Finally we change the column names of the data 
names(mean_std_data) = cleanVNames



## Creates a second, independent tidy data set with the average of each variable for each
## activity and each subject. 
# First split the data by an interaction between $Subject and $Activity
l = split(mean_std_data[,-c(1,2)], list(mean_std_data$Subject,mean_std_data$Activity))

# Obtain the mean of each column of the resulting data frames in the list l
l2 = lapply(l,colMeans)

# Converts the previous list of vectors into a data frame with each vector as a row 
dl2 = t(data.frame(l2))

# For applying "colMeans" the variables $Subject and $Activity were eliminated. 
# It's possible to get them back using the row names of dl2
dNames= rownames(dl2)
dNames = strsplit(dNames,"\\.")
dNames = t(data.frame(dNames))
head(dNames)
Activity = dNames[,2]
Subject = dNames[,1]
Subject = gsub(pattern="X",replacement="",x=Subject)
Subject = as.integer(Subject)

# We get an unsorted preliminary tidy data with inadequate row names that are 
# change to be null
tdata = data.frame(Subject,Activity,dl2)
rownames(tdata) = NULL

# Arrange this data and export it to "finalData.txt" in the working directory
finalTidyData = arrange(tdata,Subject,Activity)
write.table(x=finalTidyData, file="FinalTidyData.txt", row.names=F)