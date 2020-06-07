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
4. Reads the three data files from the test subjects subdirectory and creates data tables with meaningful column names for each:  
|   File | # Rows | # Columns  | Description |
| ------------- | ------------- | ------------- | ------------- | 
| subject_test.txt |  2947 | 1 | subject ID numbers (1-30) |
| y_test.txt |  2947 | 1 | activity IDs (1-6) |
| X_test.txt |  2947 | 66 | mean() and std() subset of feature data |
  
5. Combines these into a new data test table with dimensions 2947 rows X 68 columns 
5. Repeats step 4 for the files in the training directory; these contain 7352 records each
6. Combines the test and training data tables where column 1 is the Subject ID, column 2 is the activity label, 
and columns 3-68 have the feature data for the mean() and std().
  

