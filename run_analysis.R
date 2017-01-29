#------------------------------------------
#1.Merge the training and the test datasets
#------------------------------------------

#read features.txt and activity_labels.txt
features <- read.table("~/UCI HAR Dataset/features.txt", sep = "")
activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt", sep = "")

#read subject_train.txt, X_train.txt and y_train.txt
subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt", sep = "")
x_train <- read.table("~/UCI HAR Dataset/train/X_train.txt", sep = "")
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt", sep = "")

#read subject_test.txt, X_test.txt and y_test.txt
subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt", sep = "")
x_tet <- read.table("~/UCI HAR Dataset/test/X_test.txt", sep = "")
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt", sep = "")

#assign varialbes to datasets
f_name <- as.character(features$V2)
names(x_test) <- f_name
names(x_train) <- f_name

names(subject_test) <- "subject"
names(subject_train) <- "subject"

names(y_test) <- "activity"
names(y_train) <- "activity"

#combine datasets
test <- cbind(subject_test, y_test, x_test)
train <- cbind(subject_train, y_train, x_train)

#merge test and train datatests
m_data <- rbind(train, test)

#--------------------------------------------------------------------------------------
#2.Extract only the measurements on the mean and standard dviation for each measurement
#--------------------------------------------------------------------------------------

cname <- names(m_data)
m_std <- grep("[Mm][Ee][Aa][Nn]|[Ss][Tt][Dd]", cname)
m_std_data <- cbind(m_data[, c(1,2)], m_data[, m_std])

#----------------------------------------------------------------------
#3.Use descriptive activity names to name the activities in the dataset
#----------------------------------------------------------------------

library(dplyr)

w <- filter(m_std_data, activity == 1)
w$activity <- "walking"

w_up <- filter(m_std_data, activity == 2)
w_up$activity <- "walking_upstairs"

w_down <- filter(m_std_data, activity == 3)
w_down$activity <- "walking_downstairs"

sit <- filter(m_std_data, activity == 4)
sit$activity <- "sitting"

stand <- filter(m_std_data, activity == 5)
stand$activity <- "standing"

lay <- filter(m_std_data, activity == 6)
lay$activity <- "laying"

m_std_data <- rbind(w, w_up, w_down, sit, stand, lay)

#-------------------------------------------------------------------
#4.Appropriately labels the data set with descruptive variable names
#-------------------------------------------------------------------

cn <- names(m_std_data)
re_cn <- tolower(cn)
re_cn <- gsub("\\(\\)", "", re_cn)
re_cn <- gsub("acc", "-acceleration", re_cn)
re_cn <- gsub("mag", "-magnitude", re_cn)
re_cn <- gsub("^t(.*)$", "time-\\1", re_cn)
re_cn <- gsub("^f(.*)$", "frequency-\\1", re_cn)
re_cn <- gsub("bodybody", "body", re_cn)
re_cn <- gsub("(gyro|jerk)", "-\\1", re_cn)
names(m_std_data) <- re_cn

#-------------------------------------------------------------------
#5.From the data set in step 4, creates a second, independent tidy data set
#  with the average of each variable for each activity and each subject
#-------------------------------------------------------------------

library(tidyr)

tidy_data <- tbl_df(m_std_data) %>% group_by(subject, activity) %>%
             summarise_each(funs(mean)) %>% gather(measurement, mean, -c(subject, activity))

write.table(tidy_data, "~/tidy_data.txt", row.names = FALSE)
