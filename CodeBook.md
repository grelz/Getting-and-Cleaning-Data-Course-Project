
## Code book

Code book describes the tidt data set that produces by R script `run_analysis.R`.

Source data set and a full description of source data set is available at the site <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.

Tidy data set contains the average of the measurements on the mean and standard deviation for each activity and each subject.


| Column name                   | Units                         |
| ----------------------------- | ----------------------------- |
| Subject                       | integer                       |
| Activity                      | factor, see below             |
| Time.BodyAcc.Mean.X           | from the original data set    |
| Time.BodyAcc.Mean.Y           | from the original data set    |
| Time.BodyAcc.Mean.Z           | from the original data set    |
| Time.BodyAcc.Std.X            | from the original data set    |
| Time.BodyAcc.Std.Y            | from the original data set    |
| Time.BodyAcc.Std.Z            | from the original data set    |
| Time.GravityAcc.Mean.X        | from the original data set    |
| Time.GravityAcc.Mean.Y        | from the original data set    |
| Time.GravityAcc.Mean.Z        | from the original data set    |
| Time.GravityAcc.Std.X         | from the original data set    |
| Time.GravityAcc.Std.Y         | from the original data set    |
| Time.GravityAcc.Std.Z         | from the original data set    |
| Time.BodyAccJerk.Mean.X       | from the original data set    |
| Time.BodyAccJerk.Mean.Y       | from the original data set    |
| Time.BodyAccJerk.Mean.Z       | from the original data set    |
| Time.BodyAccJerk.Std.X        | from the original data set    |
| Time.BodyAccJerk.Std.Y        | from the original data set    |
| Time.BodyAccJerk.Std.Z        | from the original data set    |
| Time.BodyGyro.Mean.X          | from the original data set    |
| Time.BodyGyro.Mean.Y          | from the original data set    |
| Time.BodyGyro.Mean.Z          | from the original data set    |
| Time.BodyGyro.Std.X           | from the original data set    |
| Time.BodyGyro.Std.Y           | from the original data set    |
| Time.BodyGyro.Std.Z           | from the original data set    |
| Time.BodyGyroJerk.Mean.X      | from the original data set    |
| Time.BodyGyroJerk.Mean.Y      | from the original data set    |
| Time.BodyGyroJerk.Mean.Z      | from the original data set    |
| Time.BodyGyroJerk.Std.X       | from the original data set    |
| Time.BodyGyroJerk.Std.Y       | from the original data set    |
| Time.BodyGyroJerk.Std.Z       | from the original data set    |
| Time.BodyAccMag.Mean          | from the original data set    |
| Time.BodyAccMag.Std           | from the original data set    |
| Time.GravityAccMag.Mean       | from the original data set    |
| Time.GravityAccMag.Std        | from the original data set    |
| Time.BodyAccJerkMag.Mean      | from the original data set    |
| Time.BodyAccJerkMag.Std       | from the original data set    |
| Time.BodyGyroMag.Mean         | from the original data set    |
| Time.BodyGyroMag.Std          | from the original data set    |
| Time.BodyGyroJerkMag.Mean     | from the original data set    |
| Time.BodyGyroJerkMag.Std      | from the original data set    |
| FFT.BodyAcc.Mean.X            | from the original data set    |
| FFT.BodyAcc.Mean.Y            | from the original data set    |
| FFT.BodyAcc.Mean.Z            | from the original data set    |
| FFT.BodyAcc.Std.X             | from the original data set    |
| FFT.BodyAcc.Std.Y             | from the original data set    |
| FFT.BodyAcc.Std.Z             | from the original data set    |
| FFT.BodyAccJerk.Mean.X        | from the original data set    |
| FFT.BodyAccJerk.Mean.Y        | from the original data set    |
| FFT.BodyAccJerk.Mean.Z        | from the original data set    |
| FFT.BodyAccJerk.Std.X         | from the original data set    |
| FFT.BodyAccJerk.Std.Y         | from the original data set    |
| FFT.BodyAccJerk.Std.Z         | from the original data set    |
| FFT.BodyGyro.Mean.X           | from the original data set    |
| FFT.BodyGyro.Mean.Y           | from the original data set    |
| FFT.BodyGyro.Mean.Z           | from the original data set    |
| FFT.BodyGyro.Std.X            | from the original data set    |
| FFT.BodyGyro.Std.Y            | from the original data set    |
| FFT.BodyGyro.Std.Z            | from the original data set    |
| FFT.BodyAccMag.Mean           | from the original data set    |
| FFT.BodyAccMag.Std            | from the original data set    |
| FFT.BodyBodyAccJerkMag.Mean   | from the original data set    |
| FFT.BodyBodyAccJerkMag.Std    | from the original data set    |
| FFT.BodyBodyGyroMag.Mean      | from the original data set    |
| FFT.BodyBodyGyroMag.Std       | from the original data set    |
| FFT.BodyBodyGyroJerkMag.Mean  | from the original data set    |
| FFT.BodyBodyGyroJerkMag.Std   | from the original data set    |


Subject column values:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING 
