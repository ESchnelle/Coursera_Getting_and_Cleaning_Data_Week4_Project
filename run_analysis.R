## set working directory and data directory for download
workpath <- "C:/Users/ess5740/Documents/Documents/Personal/Coursera/Getting and Cleaning Data/Week4 Project/"
setwd(workpath)
if(!file.exists("./data")){dir.create("./data")}  #location for downloaded data to go

## download file under working directory
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

## unzip downloaded file under working directory
unzip("./data/Dataset.zip")

# Load required packages
library(dplyr)
library(data.table)
library(tidyr)

# Merging the training and test data tables into one table.
## test data:
XTest<- read.table("UCI HAR Dataset/test/X_test.txt")
YTest<- read.table("UCI HAR Dataset/test/Y_test.txt")
SubjectTest <-read.table("UCI HAR Dataset/test/subject_test.txt")

## train data:
XTrain<- read.table("UCI HAR Dataset/train/X_train.txt")
YTrain<- read.table("UCI HAR Dataset/train/Y_train.txt")
SubjectTrain <-read.table("UCI HAR Dataset/train/subject_train.txt")

## features and activity
features<-read.table("UCI HAR Dataset/features.txt")
activity<-read.table("UCI HAR Dataset/activity_labels.txt")

## merge train and test data in one dataset (full dataset at the end)
X<-rbind(XTest, XTrain)
Y<-rbind(YTest, YTrain)
Subject<-rbind(SubjectTest, SubjectTrain)

# Dimension of new datasets:
dim(X)
dim(Y)
dim(Subject)

# Extract the measurements with mean and standard deviation for each measurement.
index<-grep("mean\\(\\)|std\\(\\)", features[,2]) ##getting features list (Indexes) which contain mean() and std() in their field name
length(index) ## count of these mean() and std() features
X2 <- X[,index] ## extracting variables with mean() or stdev()
dim(X2) ## checking dim of subset 

# Use activity names to name activities in the table
Y[,1]<-activity[Y[,1],2] ## replacing numeric values with lookup value from activity.txt; won't reorder Y set
head(Y) 

# Label the table with descriptive variable names.
names<-features[index,2] ## getting names for variables    
names(X2)<-names ## updating colNames for new dataset
names(Subject)<-"SubjectID"
names(Y)<-"Activity"

# put data together into a Prep table
TidydataPrep <- cbind(Subject, Y, X2)
head( TidydataPrep[,c(1:4)]) ## first 5 columns

# From the dataset above, creates a second, independent tidy data set with the average of each variable for 
# each activity and each subject.
Tidydata<-data.table(TidydataPrep) ## convert to a Data Table 
TidyData <- Tidydata[, lapply(.SD, mean), by = 'SubjectID,Activity'] ## means and SD by Subject and by activity
dim(TidyData)


# First row, all columns in Tidy dataset:
head(TidyData,1)

# First 12 rows and 5 columns in Tidy dataset:
head(TidyData[order(SubjectID)][,c(1:4), with = FALSE],12) 

# Write summary final file (with mean and stddev by subject by activity) to text file(s) on disk, one as raw another as CSV
write.table(TidyData, file = "Tidy.txt", row.names = TRUE) # as a raw text file
write.csv(TidyData, file = "Tidy.csv", row.names = TRUE)   # as a CSV text file

# Capture Names in Final Table for Reference
names(TidyData)

