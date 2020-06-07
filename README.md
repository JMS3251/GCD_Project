# GCD_Project
Final Project for Getting and Cleaning Data

run_analysis.R processes data from the wearable dataset located in /UCI HAR Dataset 
which can be dowloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full explanation of the data is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## How to run
data <- run_analysis(dir)
'dir' is the full path to the /UCI HAR Dataset directory which is contained in the .zip file

### Procedure
1. Read the data
2. Process the data

### To read the results file from your working directory use the following R command:
data <- read.table("final_results.txt", header=TRUE)
View(data)