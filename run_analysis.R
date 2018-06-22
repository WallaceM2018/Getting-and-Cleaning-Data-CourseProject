# run_analysis.R

# This code gets data collected from the accelerometer and gyroscope from the Samsung Galaxy S 
# smartphone, extracts relevant measurements, and labels the variables with appropriate descriptive
# names to make a clean data set. The resulting tidy data is outputted to a file named "tidy_data.txt".

# See README.md for details.

library(dplyr)

### STEP 0: GET AND READ THE DATA

# Download the zip file containing data
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
File <- "UCI HAR Dataset.zip"

if (!file.exists(File)) {
      download.file(Url, File, mode = "wb")
}

# Unzip the zip file containing the desired data
Path <- "UCI HAR Dataset"
if (!file.exists(Path)) {
      unzip(File)
}

# Read training data
train.subjects <- read.table(file.path(Path, "train", "subject_train.txt"))
train.values <- read.table(file.path(Path, "train", "X_train.txt"))
train.activity <- read.table(file.path(Path, "train", "y_train.txt"))

train.data <- cbind(train.subjects, train.values, train.activity)

# Read test data
test.subjects <- read.table(file.path(Path, "test", "subject_test.txt"))
test.values <- read.table(file.path(Path, "test", "X_test.txt"))
test.activity <- read.table(file.path(Path, "test", "y_test.txt"))

test.data <- cbind(test.subjects, test.values, test.activity)

# Read features
features <- read.table(file.path(Path, "features.txt"), as.is = TRUE)

# Read activity labels
activity.labels <- read.table(file.path(Path, "activity_labels.txt"))

### STEP 1: MERGE THE TRAINING DATA SET AND TEST DATA SET TO CREATE ONE DATA SET

# Merge training data and test data into a single data set
total.data <- rbind(train.data, test.data)

# Label columns with appropriate names
colnames(total.data) <- c('subject',features[,2],'activity')


### STEP 2: EXTRACT ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT

# Extract desired column indices based on the criteria above
keywords <- "subject|activity|mean|std"
desired.columns <- grep(pattern = keywords, x = colnames(total.data), ignore.case = TRUE)

# Create a subset of the data with desired columns only
desired.data <- total.data[, desired.columns]


### STEP 3: Use Descriptive Activity Names to Name the Activities in the Data Set

desired.data$activity <- factor(desired.data$activity, levels = activity.labels[,1], labels = activity.labels[,2])


### STEP 4: APPROPRIATELY LABEL THE DATA SET WTIH DESCRIPTIVE VARIABLE NAMES

# Get columns names
column.names <- colnames(desired.data)

# Get rid of "()" symbols
column.names <- gsub("()","", column.names, fixed = TRUE)

# Get rid of "-" symbols
column.names <- gsub("-","", column.names, fixed = TRUE)

# Replace abbreviations with full names
column.names <- gsub("^t","time",column.names)
column.names <- gsub("Acc","Accelerometer",column.names)
column.names <- gsub("mean","Mean",column.names)
column.names <- gsub("std","StandardDeviation", column.names)
column.names <- gsub("Gyro", "Gyroscope", column.names)
column.names <- gsub("Freq", "Frequency", column.names)
column.names <- gsub("^f", "frequency", column.names)
column.names <- gsub("Mag", "Magnitude", column.names)
column.names <- gsub("tBody","timeBody", column.names)

# Fix the double "body" in some column names
column.names <- gsub("BodyBody", "Body", column.names)

# Improve readability of variable names
column.names <- gsub("time", "time.", column.names)
column.names <- gsub("frequency", "frequency.", column.names)
column.names <- gsub("Body", "Body.", column.names)
column.names <- gsub("Accelerometer", "Accelerometer.", column.names)
column.names <- gsub("Magnitude", "Magnitude.", column.names)
column.names <- gsub("Gyroscope", "Gyroscope.", column.names)
column.names <- gsub("Jerk", "Jerk.", column.names)
column.names <- gsub("MeanX","Mean.X",column.names)
column.names <- gsub("MeanY","Mean.Y",column.names)
column.names <- gsub("MeanZ","Mean.Z",column.names)
column.names <- gsub("StandardDeviationX","StandardDeviation.X",column.names)
column.names <- gsub("StandardDeviationY","StandardDeviation.Y",column.names)
column.names <- gsub("StandardDeviationZ","StandardDeviation.Z",column.names)
column.names <- gsub("MeanFrequencyX","MeanFrequency.X",column.names)
column.names <- gsub("MeanFrequencyY","MeanFrequency.Y",column.names)
column.names <- gsub("MeanFrequencyZ","MeanFrequency.Z",column.names)
column.names <- gsub("Gravity","Gravity.",column.names)
column.names <- gsub("gravityMean","gravity.Mean",column.names)

# Get rid of one extra ")" in column 82
column.names <- gsub("),",",", column.names, fixed = TRUE)

# Rename data set with new variable names
colnames(desired.data) <- column.names

### STEP 5: FROM THE DATA SET IN STEP 4, CREATE A SECOND, INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH 
###         VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT

# Group the data by subject and activity, then find the mean of each group
data.means.tidy <- desired.data %>%
      group_by(subject, activity) %>%
      summarize_each(funs(mean))

# Output the tidy data set to a file named "tidy_data.txt
write.table(data.means.tidy, "tidy_data.txt", row.names = FALSE, quote = FALSE)
