UCI HAR Dataset Analysis
========================
This repo contains the R scripts that can be used to analyse UCI HAR Dataset

##REQUIREMENTS
Create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.

* Extracts only the measurements on the mean and standard deviation for each measurement.

* Uses descriptive activity names to name the activities in the data set

* Appropriately labels the data set with descriptive variable names.

* From the data set in step 4, creates a second, independent tidy data set with the average of each variable
 for each activity and each subject.

##How do the R scripts work and get connected?

1. To make a one merged data set, two data sets(train, test) were read from UCI HAR Dataset.
   Train and test sets were transformed that 2 columns(subject, activity) and variables(features) were added
   to each data set.
   
2. To extract only the measurements on the mean and standard deviation for each measurement. "grep" function
   was used to know which column contained word "mean" or "std".
   
3. Activity names were not descriptive(activity names were numeric). so I split the data set into 6 activities
   with "filter" function and then the numerics(1 ~ 6) were replaced by real activity names("walking" etc)
   
4. But variables of the mereged data set was not still descriptive so they needed to be transformed.
   "gsub" function was used to make variables descriptive
   
5. Lastly, merged data set was grouped by "subject" and "activity" and summarised. then variales were gathered
   into "measurements" to make a tidy data set
