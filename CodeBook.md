==================================================================
Code Book for Course Project
==================================================================
Human Activity Recognition Using Smartphones Dataset
==================================================================
Version 1.1
==================================================================


Data and Variables Description 
=================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

For each record it is provided:

- Its activity label:
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

- An identifier of the subject who carried out the experiment.
    1 SUBJECT ONE
    2 SUBJECT TWO
    3 SUBJECT THREE
    4 SUBJECT FOUR
    5 SUBJECT FIVE
    6 SUBJECT SIX
    7 SUBJECT SEVEB
    8 SUBJECT EIGHT
    9 SUBJECT NINE
    10 SUBJECT TEN
    11 SUBJECT ELEVEN
    12 SUBJECT TWELVE
    13 SUBJECT THIRTEEN
    14 SUBJECT FOURTEEN
    15 SUBJECT FIFTEEN
    16 SUBJECT SIXTEEN
    17 SUBJECT SEVENTEEN
    18 SUBJECT EIGHTEEN
    19 SUBJECT NINETEEN
    20 SUBJECT TWENTY
    21 SUBJECT TWENTYONE
    22 SUBJECT TWENTYTWO
    23 SUBJECT TWENTYTHREE
    24 SUBJECT TWENTYFOUR
    25 SUBJECT TWENTYFIVE
    26 SUBJECT TWENTYSIX
    27 SUBJECT TWENTYSEVEN
    28 SUBJECT TWENTYEIGHT
    29 SUBJECT TWENTYNINE
    30 SUBJECT THIRTY

Data Transformations 
=================================

For each activity (1 to 6) and each subject (Subject 1 to Subject 30) the average of each variable was calculated.
