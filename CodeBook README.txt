==================================================================
Tidy Smartphones Dataset
Version 1.0
==================================================================

The data in this datset is taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
These data are said to be from the Samsung Galaxy S smartphone originally stored at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

From these data, a tidy data set is constructed and saved here as tidyDataFile.

For each record it is provided:
======================================
Each record is a vector of 81 variables
The first feature is the ID number of the subject in the range of 1 to 30
The second feature is the activity being done and a member of the set {"LAYING","SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS" }
The remaining are the calculated values for each feature. They are all in the range of [-1,1]. See the features_info.txt file for full description of the remaining calculations.



The dataset includes the following files:
=========================================

- 'Code Book README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'tidyDataFile': Training set.


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


License:
========
Use of the original dataset in publications must be acknowledged by referencing the following publication [1]. The tidy set is free to use following the original acknowledgement.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
