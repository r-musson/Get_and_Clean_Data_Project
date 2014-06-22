### Script for Getting and Cleaning Data Project

## This script will merge the datasets from
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 



## step 1: create the merged data frame

#load the training data into a data frame
subject_train <- read.table("subject_train.txt")
x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
df_train <- data.frame(subject_train,x_train,y_train)

#load the test data into a data frame
subject_test <- read.table("subject_test.txt")
x_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
df_test <- data.frame(subject_test,x_test,y_test)

## create the merged data frame
merged <- rbind(df_train,df_test)

## load feature and activity names
features <- read.table("features.txt",as.is=T)
activities <- read.table("activity_labels.txt")

## Step2: extract the measurements that are means and standard deviations
#
keep <- grep("mean|std",features[,2])

# need to keep all with the right names and col 1 and last col.
# the offset is needed since I added a column before the features
extracted <- merged[,c(1,keep+1,ncol(merged))]

## step 3: give activites a meaningful name
# the last column is the activity
#the activity data contains the name in the second column
extracted[,ncol(extracted)] <- sapply(extracted[,ncol(extracted)], function(y) activities[y,2])

## step 4: 
## label the data features
## using only the features with mean and std in their names
colnames(extracted) <- c("Subject", features[keep,2] , "Activity")

### at this point the extracted data frame contains the info desired
##Step 5: 

#first melt into the ids of subject and activity keeping all else as variables
tm <- melt(extracted,id=c("Subject", "Activity"),measure.vars=c(features[keep,2]))

# create tidy data of means
tidyData <- dcast(tm,Subject + Activity ~ variable,mean)

write.table(tidyData,file="tidyDataFile.txt")




