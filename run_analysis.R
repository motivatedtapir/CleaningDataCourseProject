## run_analysis.R
## R script for tidying up data collected from 30 subjects performing
## activities of daily living while wearing waist-mounted a
## smartphone (Samsung Galaxy S II) embedded with inertial sensors.
## More information can be found in the data's README file and at 
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .
## Written by motivatedtapir.

## This script assumes the dplyr and tidyr packages are installed and loads them first.
## install.packages("dplyr","tidyr")
library(dplyr)
library(tidyr)

## Import data into R. Script assumes the user's working directory
## is "/UCI HAR Dataset/".

## Read subject test data.
subject_test <- read.table(file = "test/subject_test.txt", colClasses = "numeric", header = FALSE, nrow = 2947)

## Read subject measurements.
X_test <- read.table(file = "test/X_test.txt", colClasses = "numeric", header = FALSE, nrow = 2947)

## Read activity type test data.
y_test <- read.table(file = "test/y_test.txt", colClasses = "numeric", header = FALSE, nrow = 2947)

## Repeat the above for the training data.
subject_train <- read.table(file = "train/subject_train.txt", colClasses = "numeric", header = FALSE, nrow = 2947)
X_train <- read.table(file = "train/X_train.txt", colClasses = "numeric", header = FALSE, nrow = 2947)
y_train <- read.table(file = "train/y_train.txt", colClasses = "numeric", header = FALSE, nrow = 2947)

## Read activity labels.
activity_labels <- read.table(file = "activity_labels.txt", colClasses = "character", header = FALSE)

## Read names of measurement variables.
features <- read.table(file = "features.txt", colClasses = "character", header = FALSE)

## Rename columns of subject_test, subject_train, y_test, and y_train.
subject_test <- rename(subject_test, Subject = V1)
subject_train <- rename(subject_train, Subject = V1)
y_test <- rename(y_test, Activity = V1)
y_train <- rename(y_train, Activity = V1)

## Add a column to subject_test and subject_train to identify group they belong to.
subject_test <- mutate(subject_test, Group = "Test")
subject_train <- mutate(subject_train, Group = "Train")

## Create and clean up features to use as column names for X_test and X_train.
features_vector <- t(features)
features_vector <- features_vector[2, 1:561]
features_vector <- gsub("\\.|/|\\-|\"|\\s|\\(|\\)|\\," , "" , features_vector)
features_vector <- gsub("mean", "Mean", features_vector)
features_vector <- gsub("std", "Std", features_vector)

## Add column names to to X_test and X_train.
colnames(X_test) <- features_vector
colnames(X_train) <- features_vector

## Select only the mean and standard deviation columns from X_test and X_train.
X_test_means_stds <- X_test[, grepl("Mean|Std", colnames(X_test))]
X_train_means_stds <- X_test[, grepl("Mean|Std", colnames(X_train))]

## Combine subjects, measurement, and activity data into one data frame.
test_data <- cbind(subject_test, y_test, X_test_means_stds)
train_data <- cbind(subject_train, y_train, X_train_means_stds)

## Combine train and test data.
tot_data <- rbind(train_data, test_data)

## Recode activity column to descriptive names given in activity_labels.
tot_data$Activity[tot_data$Activity == "1"] <- activity_labels[1, 2]
tot_data$Activity[tot_data$Activity == "2"] <- activity_labels[2, 2]
tot_data$Activity[tot_data$Activity == "3"] <- activity_labels[3, 2]
tot_data$Activity[tot_data$Activity == "4"] <- activity_labels[4, 2]
tot_data$Activity[tot_data$Activity == "5"] <- activity_labels[5, 2]
tot_data$Activity[tot_data$Activity == "6"] <- activity_labels[6, 2]

## Summarise data into a tidy set of means and standard deviation means by for each Subject for each Activity.
tidy_data <- tot_data %>% group_by(Subject, Group, Activity) %>% summarise_each(funs(mean))

## Write the contents of the tidy data to a text file in your working directory.
write.table(tidy_data, file = "TidyData.txt", row.name = FALSE)
