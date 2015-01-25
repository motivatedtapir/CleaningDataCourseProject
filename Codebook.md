# Codebook for tidy data set created with run_analysis.R

The following is a list of variables and their descriptions:

Subject - the subjects' id numbers
Group - the group, testing or training that the subject was included in
Activity - the activity being performed by the subject while the data was collected

The following variables are grouped means of each variable by subject, by activity. Variables with "Body" in their name are measurements of body movement, while variables with "Gravity" in their name are a measurement due to the effects of gravity. 

"t" denotes a time domain signal (captured at a constant rate of 50Hz).

"f" denotes a Fast Fourier Transform was applied to the signal to create a frequency domain signal.

"Acc" stands for data collected via the accelerometer. 

"Gyro" stands for data collected via the gyrometer. 

"Jerk" is the Jerk signal attained from body linear acceleration and angular velocity derived in time. 

"Mag" stands for the magnitude of the signal calculated using the Euclidean norm.

"Mean" denotes the variable contains a grouped mean for the activity level.

"Std" denotes the variable contains an average standard deviation for the activity level.

"X", "Y", "Z" denotes the dimension the data is from.

tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
angletBodyAccMeangravity
angletBodyAccJerkMeangravityMean
angletBodyGyroMeangravityMean
angletBodyGyroJerkMeangravityMean
angleXgravityMean
angleYgravityMean
angleZgravityMean