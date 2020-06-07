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
1. Reads the **activity_labels.txt** file so that the names can be substituted for the activity number codes.
2. Sets up a vector of column numbers to subset from the 561 feature measurements/calculations
(66 total--all the "-mean()" and "-std()" feature data).
3. Reads the **features.txt** file and edits the names for use as column headers.
4. Reads the three data files from the test subjects subdirectory and creates data tables with meaningful 
column names for each.  The **X_test.txt** file contains the data for the 561 features measured or calculated. This
file is subsetted so that the resulting data table contains only 66 measurements/calculations (those for the mean 
standard deviations).
5. Combines these into a new test data table with dimensions 2947 rows X 68 columns.
6. Repeats steps 4 and 5 for the files in the training directory; these each contain 7352 rows. 
7. Combines the test and training data tables into a single table where column 1 is the Subject ID, 
column 2 is the activity label, and columns 3-68 have the feature data for the mean() and std().  The rows are 
sorted by Subject ID in ascending order and then by activity label in descending order.  There are a total of 10,299 rows.
8. The lapply function is used to compute the mean of each of the feature measurements in columns 3 through 68, 
grouped by subject ID and activity.  A new data table is created with 180 rows (30 subjects performing 6 activities) and 68 columns.  
9. The tidy data set **final_results.txt** file is written to the working directory.
  

