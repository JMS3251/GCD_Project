run_analysis <- function(dir){
 
    ## 'dir' is a character vector of length 1 indicating the location of the
    ## main dataset directory. This directory should have two subdirectories,
    ## "test" and "train" that contain the relevant files.
  
    library(data.table)  
  
    ## Read the activity labels file to get the activity names.
    ##
    fn <- paste(dir, "/activity_labels.txt", sep="")
    activity_names <- fread(fn, select=c(2))
  
    ## Specify which columns to read (the various means and standard deviations)
    ##
    cols <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228,
              240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517,
              529:530, 542:543)

    ## Read the features file to get the column names.  The row numbers in 
    ## the features file correspond to the column numbers in the measurement 
    ## data file.
    ##
    fn <- paste(dir, "/features.txt", sep="")
    col_names <- fread(fn, select=c(2))
    
    ## The names are descriptive enough as they are; just strip out
    ## the "()" in each one and replace the '-' separators with '.'
    ##
    col_names <- col_names[cols, sub("\\(\\)", "", V2) ]
    col_names <- gsub("-", ".", col_names)
  
    ## Read the files containing the subject IDs, activity codes, and 
    ## measurements for the test group; assign column names and substitute
    ## descriptive names for the activity numbers
    ##
    fn <- paste(dir,"/test/subject_test.txt", sep="")
    testSubj <- fread(fn, col.names = c("Subject.ID"))
    
    fn <- paste(dir,"/test/y_test.txt", sep="")
    testActvty <- fread(fn, col.names = c("Activity"))
    testActvty <- testActvty[, .(Activity=activity_names[testActvty$Activity])]
    colnames(testActvty) <- c("Activity")
    
    fn <- paste(dir,"/test/X_test.txt", sep="")
    testData <- fread(fn, select = cols, col.names = col_names)

    ## Combine the tables of subject IDs, activities, and data for the test group
    ##
    testing <- cbind(testSubj, testActvty, testData)
    
    ## Read the files containing the subject IDs, activity codes, and 
    ## measurements for the training group; assign column names and substitute
    ## descriptive names for the activity numbers
    ##
    fn <- paste(dir,"/train/subject_train.txt", sep="")
    trainSubj <- fread(fn, col.names = c("Subject.ID"))
    
    fn <- paste(dir,"/train/y_train.txt", sep="")
    trainActvty <- fread(fn, col.names = c("Activity"))
    trainActvty <- trainActvty[, .(Activity=activity_names[trainActvty$Activity])]
    colnames(trainActvty) <- c("Activity")
    
    fn <- paste(dir,"/train/X_train.txt", sep="")
    trainData <- fread(fn, select=cols, col.names = col_names)

    ## Combine the tables of subject IDs, activities, and data for the training
    ## group
    ##
    training <- cbind(trainSubj, trainActvty, trainData)

    ## Combine the testing and training data sets into a single data set 
    ## Column 1:  subject ID
    ## Column 2:  Activity
    ## Columns 3-68:  measurements and data
    ## Arrange the rows by Subject ID in increasing order and then by Activity
    ## in decreasing alphabetical order
    ##
    all_data <- rbind(testing, training)
    all_data <- setorder(all_data, Subject.ID, -Activity)
 
    ## Compute the final results table:  the mean of each of the measurements
    ## and data columns (3:68) grouped by user and activity
    ##
    results <- all_data[, lapply(.SD, mean), .SDcols=col_names, 
                        by = .(Subject.ID, Activity) ]
    
    ## Write the results to an output file in the specified directory
    ##
    write.table(results, 
                file = paste(dir,"/final_results.txt", sep=""),
                quote = FALSE,
                row.names = FALSE)
    
    results

}