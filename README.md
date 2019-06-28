# Coursera_Getting_and_Cleaning_Data_Week4_Project
Coursera Getting and Cleaning Data - Week4_Project

### Documentation (Project and Data) and CodeBook (to Complete Project) 
### Coursera Getting and Cleaning Data Week 4 Project - Ethan Schnelle

  # This project in this Repo does the following:
      ## Cleans and Prepares the data to tidy standards
      ## Loads the required R-Script to this Git Hub Repo.
      ## Loads a GitHub code book, CodeBook.md, that explains process, the data, and the outputs 
         ## includes details on all the variables and summaries, along with details on units, and any other relevant information.
      ## This README is loaded to the Repo as well to explain the analysis files, purpose for the project, and R-Script.
      
  # Getting and Cleaning Data Course Project
     # The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal 
     # is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of 
     # yes/no questions related to the project. 

  # The output of this project includes: 
      # 1) a tidy data set as described below
      # 2) a link to a Github repository with the R processing script for performing the analysis, and 
      # 3) a code book, CodeBook.md, that describes the variables, the data, transformations, and work that you performed 
           ## to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. 
           ## This repo explains how all of the scripts work and how they are connected.
           
  # Background 
     # Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
     # The data in this project are collected from the accelerometers from the Samsung Galaxy S smartphone. 
     # A full description is available at the site where the data was obtained:
     # http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

  # The R-Script for this project, called run_analysis.R, in this repo does the following:
      ## Merges the training and the test sets to create one data set.
      ## Extracts only the measurements on the mean and standard deviation for each measurement.
      ## Uses descriptive activity names to name the activities in the data set
      ## Appropriately labels the data set with descriptive variable names.
      ## Processes the final data to "tidy" data standards
      ## creates an independent tidy data set with the average of each variable for each activity and each subject.
      ## outputs the final tidy data set to a flat file(s) (to both CSV and flat text files for convenience)

  # Description of the Data
     # Human Activity Recognition Using Smartphones Data Set 
     # Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities daily living (ADL) 
     # while carrying a waist-mounted smartphone with embedded inertial sensors.

  # Data Location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  # Backgoound Description of the Experiement Generating the Data
    # The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed 
    # six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing smartphone (Samsung Galaxy S II) 
    # on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity 
    # at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been 
    # randomly partitioned into two sets, where 70% of the volunteers were selected for generating  training data & 30% for test data. 

   The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding 
   windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion 
   components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed 
   to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 
   features was obtained by calculating variables from the time and frequency domain.

   The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These 
   time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then 
   separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter.

   The body linear acceleration & angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
   Also the magnitude of the 3-dimensional signals were calculated using Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
   tBodyGyroMag, tBodyGyroJerkMag).  A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, 
   fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
   (Note the ‘f’ to indicate frequency domain signals).

  # Description of abbreviations of measurements
	## leading t or f is based on time or frequency measurements
	## Body = related to body movement
	## Gravity = acceleration of gravity
	## Acc = accelerometer measurement
	## Gyro = gyroscopic measurements
	## Jerk = sudden movement acceleration
	## Mag = magnitude of movement
	## mean and SD are calculated for each subject for each activity for each mean and SD measurements
	## The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks

  # The signals were used to estimate variables of the feature vector for each pattern:
  # ‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions. 
  # They total 33 measurements including the 3 dimensions - the X,Y, and Z axes.
	## tBodyAcc-XYZ
	## tGravityAcc-XYZ
	## tBodyAccJerk-XYZ
	## tBodyGyro-XYZ
	## tBodyGyroJerk-XYZ
	## tBodyAccMag
	## tGravityAccMag
	## tBodyAccJerkMag
	## tBodyGyroMag
	## tBodyGyroJerkMag
	## fBodyAcc-XYZ
	## fBodyAccJerk-XYZ
	## fBodyGyro-XYZ
	## fBodyAccMag
	## fBodyAccJerkMag
	## fBodyGyroMag
	## fBodyGyroJerkMag

  # The set of variables that were estimated from these signals are:
	## mean(): Mean value
	## std(): Standard deviation
