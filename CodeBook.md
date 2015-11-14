# CodeBook

This is a code book that describes the dataset `aver_data` resulting from the `run_analysis.R` script.

## The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The values shown here `aver_data` are the averages of the original values grouped by activity and subject. The original values used to compute these averages, correspond to the mean and the std of the accelerometer and gyroscope 3-axial raw signals.

For relevant features, '-xyz' is used to denote 3-axial signals in the X, Y and Z directions. Thus, for `tbodyaccmean` there will be three corresponding variables versions one for each axis:

* `tbodyaccmeanx`
* `tbodyaccmeany`
* `tbodyaccmeanz`

## The Data

### Identifiers
* `activity` - The type of activity performed when the corresponding measurements were taken.
* `subject` - The ID of the subject as an integer value.

### Activity Labels
* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

### Measurements
* `tbodyaccmeanx`
* `tbodyaccmeany`
* `tbodyaccmeanz`
* `tbodyaccstdx`
* `tbodyaccstdy`
* `tbodyaccstdz`
* `tgravityaccmeanx`
* `tgravityaccmeany`
* `tgravityaccmeanz`
* `tgravityaccstdx`
* `tgravityaccstdy`
* `tgravityaccstdz`
* `tbodyaccjerkmeanx`
* `tbodyaccjerkmeany`
* `tbodyaccjerkmeanz`
* `tbodyaccjerkstdx` 
* `tbodyaccjerkstdy`
* `tbodyaccjerkstdz`
* `tbodygyromeanx` 
* `tbodygyromeany`
* `tbodygyromeanz`
* `tbodygyrostdx`    
* `tbodygyrostdy`
* `tbodygyrostdz`
* `tbodygyrojerkmeanx`
* `tbodygyrojerkmeany`
* `tbodygyrojerkmeanz`
* `tbodygyrojerkstdx`
* `tbodygyrojerkstdy`
* `tbodygyrojerkstdz`
* `tbodyaccmagmean`
* `tbodyaccmagstd`
* `tgravityaccmagmean`
* `tgravityaccmagstd`
* `tbodyaccjerkmagmean`
* `tbodyaccjerkmagstd`
* `tbodygyromagmean`
* `tbodygyromagstd`
* `tbodygyrojerkmagmean`
* `tbodygyrojerkmagstd`
* `fbodyaccmeanx`
* `fbodyaccmeany`
* `fbodyaccmeanz`      
* `fbodyaccstdx`
* `fbodyaccstdy`
* `fbodyaccstdz`
* `fbodyaccjerkmeanx`
* `fbodyaccjerkmeany`
* `fbodyaccjerkmeanz`  
* `fbodyaccjerkstdx`
* `fbodyaccjerkstdy`
* `fbodyaccjerkstdz`   
* `fbodygyromeanx`
* `fbodygyromeany`
* `fbodygyromeanz`     
* `fbodygyrostdx`
* `fbodygyrostdy`
* `fbodygyrostdz`
* `fbodyaccmagmean`
* `fbodyaccmagstd`
* `fbodyaccjerkmagmean`
* `fbodyaccjerkmagstd`
* `fbodygyromagmean`
* `fbodygyromagstd`
* `fbodygyrojerkmagmean`
* `fbodygyrojerkmagstd`

###Notes: 
- Features are normalized and bounded within [-1,1].

