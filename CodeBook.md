# Codebook for the tidy datasets
The original dataset can be downloaded at: 
[Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

In this repo, the raw data is stored in: path2raw = /data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/

## The tidy dataset 1 (Step 1-4 in README.md)
Stored in data/tidy_data1.txt.

These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

1. mean(): Mean value

2. std(): Standard deviation

Therefore, there are (8 x 3 + 9) x 2 = 66 features in this tidy dataset. Features are normalized and bounded within [-1,1]. Each feature vector is a row on the text file. Besides, activity and subject mark the name of the activity and the ID of the subject corresponding to each row.

| Column index in \n path2raw/features.txt|Feature name| \# of feature|
|-----:|:---------------------------|----:|
|     1|tBodyAcc-mean()-X           |    1|
|     2|tBodyAcc-mean()-Y           |    2|
|     3|tBodyAcc-mean()-Z           |    3|
|     4|tBodyAcc-std()-X            |    4|
|     5|tBodyAcc-std()-Y            |    5|
|     6|tBodyAcc-std()-Z            |    6|
|    41|tGravityAcc-mean()-X        |    7|
|    42|tGravityAcc-mean()-Y        |    8|
|    43|tGravityAcc-mean()-Z        |    9|
|    44|tGravityAcc-std()-X         |   10|
|    45|tGravityAcc-std()-Y         |   11|
|    46|tGravityAcc-std()-Z         |   12|
|    81|tBodyAccJerk-mean()-X       |   13|
|    82|tBodyAccJerk-mean()-Y       |   14|
|    83|tBodyAccJerk-mean()-Z       |   15|
|    84|tBodyAccJerk-std()-X        |   16|
|    85|tBodyAccJerk-std()-Y        |   17|
|    86|tBodyAccJerk-std()-Z        |   18|
|   121|tBodyGyro-mean()-X          |   19|
|   122|tBodyGyro-mean()-Y          |   20|
|   123|tBodyGyro-mean()-Z          |   21|
|   124|tBodyGyro-std()-X           |   22|
|   125|tBodyGyro-std()-Y           |   23|
|   126|tBodyGyro-std()-Z           |   24|
|   161|tBodyGyroJerk-mean()-X      |   25|
|   162|tBodyGyroJerk-mean()-Y      |   26|
|   163|tBodyGyroJerk-mean()-Z      |   27|
|   164|tBodyGyroJerk-std()-X       |   28|
|   165|tBodyGyroJerk-std()-Y       |   29|
|   166|tBodyGyroJerk-std()-Z       |   30|
|   201|tBodyAccMag-mean()          |   31|
|   202|tBodyAccMag-std()           |   32|
|   214|tGravityAccMag-mean()       |   33|
|   215|tGravityAccMag-std()        |   34|
|   227|tBodyAccJerkMag-mean()      |   35|
|   228|tBodyAccJerkMag-std()       |   36|
|   240|tBodyGyroMag-mean()         |   37|
|   241|tBodyGyroMag-std()          |   38|
|   253|tBodyGyroJerkMag-mean()     |   39|
|   254|tBodyGyroJerkMag-std()      |   40|
|   266|fBodyAcc-mean()-X           |   41|
|   267|fBodyAcc-mean()-Y           |   42|
|   268|fBodyAcc-mean()-Z           |   43|
|   269|fBodyAcc-std()-X            |   44|
|   270|fBodyAcc-std()-Y            |   45|
|   271|fBodyAcc-std()-Z            |   46|
|   345|fBodyAccJerk-mean()-X       |   47|
|   346|fBodyAccJerk-mean()-Y       |   48|
|   347|fBodyAccJerk-mean()-Z       |   49|
|   348|fBodyAccJerk-std()-X        |   50|
|   349|fBodyAccJerk-std()-Y        |   51|
|   350|fBodyAccJerk-std()-Z        |   52|
|   424|fBodyGyro-mean()-X          |   53|
|   425|fBodyGyro-mean()-Y          |   54|
|   426|fBodyGyro-mean()-Z          |   55|
|   427|fBodyGyro-std()-X           |   56|
|   428|fBodyGyro-std()-Y           |   57|
|   429|fBodyGyro-std()-Z           |   58|
|   503|fBodyAccMag-mean()          |   59|
|   504|fBodyAccMag-std()           |   60|
|   516|fBodyBodyAccJerkMag-mean()  |   61|
|   517|fBodyBodyAccJerkMag-std()   |   62|
|   529|fBodyBodyGyroMag-mean()     |   63|
|   530|fBodyBodyGyroMag-std()      |   64|
|   542|fBodyBodyGyroJerkMag-mean() |   65|
|   543|fBodyBodyGyroJerkMag-std()  |   66|
|   -  |activity                    |   - |
|   -  |subject                     |   - |

See more information in 'path2raw/features.txt' and 'path2raw/features_info.txt'.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## The tidy dataset 2 (Step 5 in README.md)
Stored in data/tidy_data2.txt.

It has similar structure to the tidy dataset 1 except each row represents the mean value of the 66 features by subject and activity.