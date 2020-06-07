# GCD_Project
## Final Project for Getting and Cleaning Data 

run_analysis.R processes data from the wearable dataset which can be dowloaded here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full explanation of the original data is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### How to run

```
data <- run_analysis(dir)
```

'dir' is the working directory; it should be full path to the */UCI HAR Dataset* 
directory which was unpacked from the .zip file

run_analysis returns a tidy data table as described below and also writes a 
**final_results.txt** data file in 'dir' 

To read the results file from your working directory ('dir') use the following R commands:

```
data <- read.table("final_results.txt", header=TRUE)
View(data)
```

### Analysis Procedure (run_analysis.R)
1. Reads the activity_labels.txt file
2. Sets up a vector of column numbers to include (66 total--all the "-mean()" and "-std()" features)
3. Reads the features.txt file and edits the names for use as column headers
4. Reads the three data files from the test subjects subdirectory:  
  - subject_test.txt 2947 rows X 1 column of subject ID numbers (1-30)
  - X_test.txt 2947 rows X 561 columns of feature data
  - y_test.txt 2947 rows X 1 column of activity IDs (1-6)

