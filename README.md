## Getting and Cleaning Data
This R markdown describes what `run_analysis.R` does. The code from this script is structured in 4 main actions. When necessary, some of them are described more in detail in order to clarify the flow of the program.

### 1. Set up the fixed path and the dynamic paths.
This is because data are not stored in the same directories. The point here is to set a kind of reference location from which acces all the data. It could be done easily with `setwd()` but from my point of view it is worth avoid any change outside the R script.

### 2. Load all data needed for the project
2.1. Store the variables values in a list `merged_data`. It is important preserve the original structure of the data. Namely, the magnitudes, the subjects and the activities separately. Here is where we can take advantage of the objects `fixed_path` and `dyn_paths` by using `lapply()`.<br /> 
2.2. Store the variable names `features`.<br />
2.3. Store the names of the labels of the variable activity `activity_names`.<br />

### 3. Clean the data obtained
Here is where the majority of the work will be done. In particular points 2, 3 and 4 from the Course Project instructions.<br />
3.1. Get the indexes of the features of interest (the mean and the std of the measurements. It can be done by using `grep()` function over `features`.<br />
3.2. Store all data of interest in a data.table `data`. Note that the structure of `merged_data` allows us to conduct this operation in a very compacted way.<br />
3.3. Rename the corresponding variables in a proper manner (e.g. without lowercase, hyphens...).<br />
3.4. Set the labels of the activity variable and return the data set. Assign it to `all_data`. <br />

### 4. Compute the average of each variable for each activity and each subject
4.1. Save the results.