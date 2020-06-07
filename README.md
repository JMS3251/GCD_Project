# GCD_Project
Final Project for Getting and Cleaning Data

run_analysis.R processes data from the wearable dataset which can be dowloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full explanation of the data is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## How to run
data <- run_analysis(dir)

'dir' is the working directory; it should be full path to the */UCI HAR Dataset* 
directory which was unpacked from the .zip file

run_analysis returns a tidy data table as described below and also writes a 
**final_results.txt** data file in 'dir' 

To read the results file from your working directory ('dir') use the following R command:
data <- read.table("final_results.txt", header=TRUE)
View(data)

### Procedure
1. Read the data
2. Process the data

