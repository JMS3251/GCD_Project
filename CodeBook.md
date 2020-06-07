# Getting and Cleaning Data Programming Assignment
## Code Book

| Column Name | Description | Range  | Units |
| ------------- | ------------- | ------------- | ------------- | 
| Subject.ID  |  Subject identifier | 1 to 30  | NA |
| Activity  | One of 6 activities performed by subjects  | WALKING, WALIKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  | NA |
| tBodyAcc.mean.X  |  Mean of the mean time domain body acceleration X component | -1.0 to 1.0  | standard gravity units g = 9.80665 m/sec^2 |
| tBodyAcc.mean.Y  |  Mean of the mean time domain body acceleration Y component | -1.0 to 1.0  | g |
| tBodyAcc.mean.Z  |  Mean of the mean time domain body acceleration Z component | -1.0 to 1.0  | g |
| tBodyAcc.std.X  |  Mean of the standard deviation of the time domain body acceleration X component | -1.0 to 1.0  | g |
| tBodyAcc.std.Y  |  Mean of the standard deviation of the time domain body acceleration Y component | -1.0 to 1.0  | g |
| tBodyAcc.std.Z  |  Mean of the standard deviation of the time domain body acceleration Z component | -1.0 to 1.0  | g |
| tGravityAcc.mean.X  |  Mean of the mean time domain gravity acceleration X component | -1.0 to 1.0  | g |
| tGravityAcc.mean.Y  |  Mean of the mean time domain gravity acceleration Y component | -1.0 to 1.0  | g |
| tGravityAcc.mean.Z  |  Mean of the mean time domain gravity acceleration Z component | -1.0 to 1.0  | g |
| tGravityAcc.std.X  |  Mean of the standard deviation of the time domain gravity acceleration X component | -1.0 to 1.0  | g |
| tGravityAcc.std.Y  |  Mean of the standard deviation of the time domain gravity acceleration Y component | -1.0 to 1.0  | g |
| tGravityAcc.std.Z  |  Mean of the standard deviation of the time domain gravity acceleration Z component | -1.0 to 1.0  | g |
| tBodyAccJerk.mean.X  |  Mean of the mean time domain body acceleration jerk signal X component | -1.0 to 1.0  | g |
| tBodyAccJerk.mean.Y  |  Mean of the mean time domain body acceleration jerk signal Y component | -1.0 to 1.0  | g |
| tBodyAccJerk.mean.Z  |  Mean of the mean time domain body acceleration jerk signal Z component | -1.0 to 1.0  | g |
| tBodyAccJerk.std.X  |  Mean of the standard deviation of the time domain body acceleration jerk signal X component | -1.0 to 1.0  | g |
| tBodyAccJerk.std.Y  |  Mean of the standard deviation of the time domain body acceleration jerk signal Y component | -1.0 to 1.0  | g |
| tBodyAccJerk.std.Z  |  Mean of the standard deviation of the time domain body acceleration jerk signal Z component | -1.0 to 1.0  | g |
| tBodyGyro.mean.X  |  Mean of the mean time domain body gyroscope X component | -1.0 to 1.0  | radians/second |
| tBodyGyro.mean.Y  |  Mean of the mean time domain body gyroscope Y component | -1.0 to 1.0  | radians/second |
| tBodyGyro.mean.Z  |  Mean of the mean time domain body gyroscope Z component | -1.0 to 1.0  | radians/second |
| tBodyGyro.std.X  |  Mean of the standard deviation of the time domain body gyroscope X component | -1.0 to 1.0  | radians/second |
| tBodyGyro.std.Y  |  Mean of the standard deviation of the time domain body gyroscope Y component | -1.0 to 1.0  | radians/second |
| tBodyGyro.std.Z  |  Mean of the standard deviation of the time domain body gyroscope Z component | -1.0 to 1.0  | radians/second |
| tBodyGyroJerk.mean.X  |  Mean of the mean time domain body gyroscope jerk signal X component | -1.0 to 1.0  | radians/second |
| tBodyGyroJerk.mean.Y  |  Mean of the mean time domain body gyroscope jerk signal Y component | -1.0 to 1.0  | radians/second |
| tBodyGyroJerk.mean.Z  |  Mean of the mean time domain body gyroscope jerk signal Z component | -1.0 to 1.0  | radians/second |
| tBodyGyroJerk.std.X  |  Mean of the standard deviation of the time domain body gyroscope jerk signal X component | -1.0 to 1.0  | radians/second |
| tBodyGyroJerk.std.Y  |  Mean of the standard deviation of the time domain body gyroscope jerk signal Y component | -1.0 to 1.0  | radians/second |
| tBodyGyroJerk.std.Z  |  Mean of the standard deviation of the time domain body gyroscope jerk signal Z component | -1.0 to 1.0  | radians/second |
| tBodyAccMag.mean |  Mean of the mean time domain body acceleration magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | g |
| tBodyAccMag.std |  Mean of the standard deviation of the time domain body acceleration magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | g |
| tGravityAccMag.mean |  Mean of the mean time domain gravity acceleration magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | g |
| tGravityAccMag.std |  Mean of the standard deviation of the time domain gravity acceleration magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | g |
| tBodyAccJerkMag.mean |  Mean of the mean time domain body acceleration jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | g |
| tBodyAccJerkMag.std |  Mean of the standard deviation of the time domain body acceleration jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | g |
| tBodyGyroMag.mean |  Mean of the mean time domain body gyroscope magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | radians/second |
| tBodyGyroMag.std |  Mean of the standard deviation of the time domain body gyroscope magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | radians/second |
| tBodyGyroJerkMag.mean |  Mean of the mean time domain body gyroscope jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | radians/second |
| tBodyGyroJerkMag.std |  Mean of the standard deviation of the time domain body gyroscope jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | radians/second |
| fBodyAcc.mean.X  |  Mean of the mean frequency domain body acceleration X component | -1.0 to 1.0  | NA |
| fBodyAcc.mean.Y  |  Mean of the mean frequency domain body acceleration Y component | -1.0 to 1.0  | NA |
| fBodyAcc.mean.Z  |  Mean of the mean frequency domain body acceleration Z component | -1.0 to 1.0  | NA |
| fBodyAcc.std.X  |  Mean of the standard deviation of the frequency domain body acceleration X component | -1.0 to 1.0  |  NA |
| fBodyAcc.std.Y  |  Mean of the standard deviation of the frequency domain body acceleration Y component | -1.0 to 1.0  | NA |
| fBodyAcc.std.Z  |  Mean of the standard deviation of the frequency domain body acceleration Z component | -1.0 to 1.0  | NA |
| fBodyAccJerk.mean.X  |  Mean of the mean frequency domain body acceleration jerk signal X component | -1.0 to 1.0  | NA |
| fBodyAccJerk.mean.Y  |  Mean of the mean frequency domain body acceleration jerk signal Y component | -1.0 to 1.0  | NA |
| fBodyAccJerk.mean.Z  |  Mean of the mean frequency domain body acceleration jerk signal Z component | -1.0 to 1.0  | NA |
| fBodyAccJerk.std.X  |  Mean of the standard deviation of the frequency domain body acceleration jerk signal X component | -1.0 to 1.0  | NA |
| fBodyAccJerk.std.Y  |  Mean of the standard deviation of the frequency domain body acceleration jerk signal Y component | -1.0 to 1.0  | NA |
| fBodyAccJerk.std.Z  |  Mean of the standard deviation of the frequency domain body acceleration jerk signal Z component | -1.0 to 1.0  | NA |
| fBodyGyro.mean.X  |  Mean of the mean frequency domain body gyroscope X component | -1.0 to 1.0  | NA |
| fBodyGyro.mean.Y  |  Mean of the mean frequency domain body gyroscope Y component | -1.0 to 1.0  | NA |
| fBodyGyro.mean.Z  |  Mean of the mean frequency domain body gyroscope Z component | -1.0 to 1.0  | NA |
| fBodyGyro.std.X  |  Mean of the standard deviation of the frequency domain body gyroscope X component | -1.0 to 1.0  | NA |
| fBodyGyro.std.Y  |  Mean of the standard deviation of the frequency domain body gyroscope Y component | -1.0 to 1.0  | NA |
| fBodyGyro.std.Z  |  Mean of the standard deviation of the frequency domain body gyroscope Z component | -1.0 to 1.0  | NA |
| fBodyAccMag.mean |  Mean of the mean frequency domain body acceleration magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyAccMag.std |  Mean of the standard deviation of the frequency domain body acceleration magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyAccJerkMag.mean |  Mean of the mean frequency domain body acceleration jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyAccJerkMag.std |  Mean of the standard deviation of the frequency domain body acceleration jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyGyroMag.mean |  Mean of the mean frequency domain body gyroscope magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyGyroMag.std |  Mean of the standard deviation of the frequency domain body gyroscope magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyGyroJerkMag.mean |  Mean of the mean frequency domain body gyroscope jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |
| fBodyGyroJerkMag.std |  Mean of the standard deviation of the frequency domain body gyroscope jerk signal magnitude (Euclidean norm of the 3-D signal) | 0.0 to 1.0  | NA |