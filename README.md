# Getting and Cleaning Data: Coursera Course Project

One of the most exciting areas in all of data science right now is wearable computing. Companies
like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract
new users.

The objective of this project was to collect, work with, and clean a data set that includes 
measurements from the accelerometer and gyroscope of the Samsung Galaxy S smartphone. The final goal
was to prepare a tidy data set that can be used for later analysis.

This repository includes the following files:
1. README.md - this document which explains the analysis files and how the data set was created
2. run_analysis.R - the R script that created the tidy data set
3. tidy_data.txt - the tidy data set itself
4. CodeBook.md - the code book which describes the variables and summaries calculated


## Background

The source data set for this project is called the Human Activity Recognition Using Smartphones Data
Set, and it was retrieved from the UCI Machine Learning Repository. In short, the Human Activity
Recognition database was built from the recordings of 30 subjects performing activities of daily
living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.


This original data set is described as follows (copied from the UCI Machine Learning Repository):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48
years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S2) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity
at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The
obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was
selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and 
then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The
sensor acceleration signal, which has gravitational and body motion components, was separated using 
a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed 
to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and 
frequency domain.


## Project Data Set

First, the two data sets (training and test) were merged together to create one data set. This 
merged data set contained 561 attributes (measurements). Then, only the measurements on the mean 
and standard deviation were extracted to create a new data set. This new data set contained 79 
attributes (measurements). Finally, for each subject and for each activity, the measurements were 
averaged. This resulted in the final tidy data set.


## Creating the Project Data Set

The file run_analysis.R is used to retrieve the original data set from the UCI Machine Learning
Repository and create the project data set described above. The script accomplishes this as follows:
* Downloads the zip file containing the data.
* Unzips the zip file containing the data.
* Reads in the training data, test data, features, and activity labels.
* Merges the training data and test data into a single data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names.
* Creates a second, independent data set with the average of each variable for each activity and each subject.
* Writes the data set to a file called tidy_data.txt.