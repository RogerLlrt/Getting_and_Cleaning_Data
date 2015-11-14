#==============================================================================#
#==================== Getting and Cleaning Data ===============================#
#==============================================================================#
require(data.table)

## 1. Set up the fixed path and the dynamic paths.

fixed_path <- paste(getwd(), '/UCI HAR Dataset', sep = '')

dyn_paths <- list(subject = c("train/subject_train.txt", "test/subject_test.txt"),
                  labels = c("train/y_train.txt", "test/y_test.txt"),
                  values = c("train/X_train.txt","test/X_test.txt"))

## 2. Load all data nedded for the project
##### 2.1 Store the variables values in a list (separately)
##### 2.2 Store the variable names 
##### 2.3 Store the names of the labels of the activity variable

merged_data <- lapply(dyn_paths, function(pair){
        train <- fread(paste(fixed_path, pair[1], sep = '/'))
        test <- fread(paste(fixed_path, pair[2], sep = '/'))
        return((rbind(test, train)))
})

features <- read.table(list.files(fixed_path, full.names = TRUE, pattern = "features.txt"),
                       colClasses = 'character')[, 2]

activity_names <- read.table(list.files(fixed_path, pattern = 'activity', full.names = TRUE),
                             colClasses = 'character')[, 2]

## 3. Clean the data obtained
##### 3.1 Get the indexes of the features of interest
##### 3.2 Store all data of interest in a data.table
##### 3.3 Rename the corresponding variables in a proper manner (e.g. without lowercase, hyphens...)
##### 3.4 Set the labels of the activity variable and return the data set

all_data <- with(merged_data, {
        sel_feat_indx <- grep("(mean|std)\\()", features)
        data <- cbind(subject, labels, values[, sel_feat_indx, with = FALSE])
        names(data) <- c('subject', 'activity', gsub('[body]+(body)', 'body', 
                                                     gsub('[,]|[-()]', '', 
                                                          tolower(features[sel_feat_indx]))))
        return(data[, activity := activity_names[labels[[1]]]])
})

## 4. Compute the average of each variable for each activity and each subject
##### 4.1 Save the results

aver_data <- all_data[ , lapply(.SD, mean), by = c('activity', 'subject')]

write.table(aver_data, file = 'aver_data.txt', row.names = FALSE)