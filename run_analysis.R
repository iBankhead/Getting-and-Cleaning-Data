#############################################
# Johns Hopkins University
# Data Science
#
# COURSE PROJECT
# GETTING AND CLEANING DATA
#############################################


# Loading feature names
features <- read.table("./UCI HAR Dataset/features.txt", header = FALSE, sep = "")

# Loading Test Set files
Test <- read.csv("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
TestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep = " ")
TestY <- read.table("./UCI HAR Dataset/test/y_test.txt", sep = " ")


#############################################
# STEP 4: Appropriately labels the data set with descriptive variable names. 
#############################################
# Load names for the features in the Test Set
names(Test) <- as.character(features$V2)

# Merge with subject information in the Test Set
Test$subject <- TestSubject$V1


#############################################
# STEP 3: Uses descriptive activity names to name the activities in the data set 
#############################################
# Merge with activity information in the Test Set
Test$activity <- TestY$V1
Test$activity <- factor(Test$activity, levels=c(1,2,3,4,5,6))
levels(Test$activity) <- c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING')

# Loading Train Set files
Train <- read.csv("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
TrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep = " ")
TrainY <- read.table("./UCI HAR Dataset/train/y_train.txt", sep = " ")


#############################################
# STEP 4: Appropriately labels the data set with descriptive variable names. 
#############################################
# Load names for the features in the Train Set
names(Train) <- as.character(features$V2)

# Merge with subject information in the Train Set
Train$subject <- TrainSubject$V1


#############################################
# STEP 3: Uses descriptive activity names to name the activities in the data set 
#############################################
# Merge with activity information in the Train Set
Train$activity <- TrainY$V1
Train$activity <- factor(Train$activity, levels=c(1,2,3,4,5,6))
levels(Train$activity) <- c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING')


#############################################
# STEP 1: Merges the training and the test sets to create one data set.
#############################################
MergedData <- rbind(Test, Train)


#############################################
# STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement. 
#############################################
columns <- grep("mean[()]|-std[()]|activity|subject", names(MergedData))
ExtractData <- MergedData[,columns]


#############################################
# STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#############################################
library(dplyr)
TidyData <- ExtractData %>% group_by(subject, activity) %>% summarise_each(funs(mean))

# Write data to file
write.table(TidyData, file = "tidyData.txt", row.name = FALSE)










