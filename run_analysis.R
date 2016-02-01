################################################################################
## Getting and Cleaning Data Course Project
################################################################################

# This R script does the following:
# 1. Reads the training and the test sets from UCI HAR Dataset in work directory.
# 2. Merges the training and the test sets to create one data set.
# 3. Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
# 4. Uses descriptive activity names to name the activities in the data set
# 5. Appropriately labels the data set with descriptive variable names.
# 6. From the data set in previous step, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
# 7. Write tidy data set into tidydata.txt


# Load libraries
library(dplyr)


# 1. Reads the training and the test sets from UCI HAR Dataset in work directory.

# Data set direcoty. Function read_data use this variable.
data_set_dir <- "UCI HAR Dataset"

# Fuction read_data read file into data frames. 
# Argumetns is folders and file name.
# Fuction uses variable data_set_dir and argumetns to create a path, and read 
# file into data frame.
read_data <- function (...) {
    filename <- file.path(data_set_dir, ...)
    if (!file.exists(filename)) 
        stop(paste0("File ", filename, " not found"));
    read.table(filename)
}

# Check data directory
if (!file.exists(data_set_dir)) 
    stop(paste0("There is no data directory ", data_set_dir));

# Read activity names
data_activity_labels <- read_data("activity_labels.txt")
names(data_activity_labels) <- c("Activity", "Activity.Label")

# Read features columns names
data_features <- read_data("features.txt")
names(data_features) <- c("Features.Id", "Features.Label")

# Read train data - main data
data_train_main <- tbl_df(read_data("train", "X_train.txt"))
names(data_train_main) <- data_features$Features.Label

# Read train data - activity data
data_train_activiy <- tbl_df(read_data("train", "y_train.txt"))
names(data_train_activiy) <- "Activity"

# Read train data - subject data
data_train_subject <- tbl_df(read_data("train", "subject_train.txt"))
names(data_train_subject) <- "Subject"

# Read test data - main data
data_test_main <- tbl_df(read_data("test", "X_test.txt"))
names(data_test_main) <- data_features$Features.Label

# Read test data - activity data
data_test_activiy <- tbl_df(read_data("test", "y_test.txt"))
names(data_test_activiy) <- "Activity"
        
# Read test data - subject data
data_test_subject <- tbl_df(read_data("test", "subject_test.txt"))
names(data_test_subject) <- "Subject"

# Bind columns for train data
data_train <- bind_cols(data_train_subject, data_train_activiy, data_train_main)

# Bind columns for test data
data_test <- bind_cols(data_test_subject, data_test_activiy, data_test_main)


# 2. Merges the training and the test sets to create one data set.
data_step1 <- bind_rows(data_train, data_test)


# 3. Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
data_step2 <- select(data_step1, 1, 2, grep("-mean\\(|-std\\(",names(data_step1)))


# 4. Uses descriptive activity names to name the activities in the data set
data_step3 <- 
    mutate(data_step2, Activity = data_activity_labels$Activity.Label[Activity])


# 5. Appropriately labels the data set with descriptive variable names.
names(data_step3) <- sapply(names(data_step3), function (col_name) {
    #tBody => Time.Body
    #tGravity => Time.Gravity
    col_name <- sub("^t","Time.",col_name)
    #fBody => FFT.Body
    #fGravity => FFT.Gravity
    col_name <- sub("^f","FFT.",col_name)
    #-mean()- => Mean.
    col_name <- sub("-mean\\(\\)-",".Mean.",col_name)
    #-std()- => Std.
    col_name <- sub("-std\\(\\)-",".Std.",col_name)
    #-mean() => Mean
    col_name <- sub("-mean\\(\\)",".Mean",col_name)
    #-std() => Std
    col_name <- sub("-std\\(\\)",".Std",col_name)
    # return col_name
    col_name
})


# 6. From the data set in previous step, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
data_step5 <- group_by(data_step3, Subject, Activity) %>% summarise_each(funs(mean))


# 7. Write tidy data set into tidydata.txt
write.table(data_step5, "tidydata.txt", row.names = FALSE) 
