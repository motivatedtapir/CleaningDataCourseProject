# CleaningDataCourseProject
Files to complete Getting and Cleaning Data Course Project

Repository includes:

README.md - this document
Cookbook.md - describes variables included in the final tidy data set
run_analysis.R - The R script used to create the tidy data set.

Tidy data was created using the data found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones . The data was collected from 30 subjects performing activities of daily living while wearing a waist-mounted smartphone (Samsun Galaxy S II) embedded with inertial sensors.

The raw data is made up of training data and test data gathered from the inertial sensors. The tidy data set was created by first importing the data into R and then using R base, dplyr, and tidyr functions to merge the data sets, give more descriptive variable names, and create more descriptive statistics (means and standard deviations of subjects by activity performed). The methods for creating the tidy data set can be found in run_analysis.R. The tidy data set should be appropriate for more easily performing further analyses and functional studies of inertial motion sensors.
