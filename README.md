Get_and_Clean_Data_Project
==========================

This project cleans a dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The run_analysis.R script takes training and test data from the original data set and merges it into one tidy set.

The script expects 8 files to be in the current working directory:

    "subject_train.txt"
    "X_train.txt"
    "y_train.txt"
    "subject_test.txt"
    "X_test.txt"
    "y_test.txt"
    "features.txt"
    "activity_labels.txt"

These are the original data files and the code book for them is explained in the original data as part of the zip file

Step 1 is to merge all of the data into a single data frame. This is done in three substeps.
  The first three files are read and merged ito a single train data frame with columns for the subject, X data, and Y data
  The second set of three files are read and merged ito a single test data frame with columns for the subject, X data, and Y data
  Finally, the merged dataset is created by binding the rows of all of the data into one large data frame.

Step 2 Extracts the features that have mean and standard deviation calculation. This is determined by the original feature names.

Step 3 is to transform the integers for the activites into a meaningful name. This is done using the name file from the original dataset.

Step 4 is to provide meaningful feature names to the data using the original feature names descriptions from the original dataset.

Finally, step 5 melts the data by subject and activity and measures the mean values of each subject and activity pair. This leaves only data for each subject and each activity in the final tidy dataset.

