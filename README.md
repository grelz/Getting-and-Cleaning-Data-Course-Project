## Getting and Cleaning Data Course Project

This repo contains R script, that reads data collected from the accelerometers from the Samsung Galaxy S smartphone, and produces tidy data set, that contains the average of the measurements on the mean and standard deviation for each activity and each subject.

A full description of source data set is available at the site <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>.


### Repo 

Repo includes the following files:

- `README.md`: This file.
- `CodeBook.md`: The code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.
- `run_analysis.R`: R script script for performing the analysis.

### Process

The R script `run_analysis.R` does the following:

1. Reads the training and the test sets from `UCI HAR Dataset` in work directory.
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Write the tidy data set into file `tidydata.txt`.

###  Running

1. Download source data set from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>.
2. Unpack archive into work direcory.
3. Run R script `run_analysis.R` with no parameters.
4. R script will produce file `tidydata.txt` that contains tidy data set.
