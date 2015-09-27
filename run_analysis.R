#RUN THE SCRIPT IN YOUR WORKING DIRECTORY, THE SCRIPT INCLUDES DOWNLOADIG AND UNZIPPING SAMSUNG FILES#

#INSTALL NECESSARY PACKAGES#

install.packages("dplyr")
library(dplyr)

#DOWNLOAD ZIP FILE FROM WEB AND UNZIP FILES TO WORKING DIRECTORY FOLDER#

temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
con=url("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
unzip(temp)
unlink(temp)
close(con)

#READ DATA FROM UNZIPED FILES ABOUT TEST DATA, INCLUDING RENAMING ACTIVITY VALUES REQUIRED FOR STEP_3#

datatest <- read.table("./UCI HAR Dataset/test/X_test.txt")
datatestnames <- read.table("./UCI HAR Dataset/features.txt")
nombres<-make.names(datatestnames$V2,unique = TRUE)
names(datatest)<-nombres
datatestsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(datatestsubject)<-c("subject")
datatestactivity <- read.table("./UCI HAR Dataset/test/y_test.txt")
names(datatestactivity)<-c("activity")
datatestactivity1 <- datatestactivity %>% mutate(activity=replace(activity,activity==1,"WALKING"))
datatestactivity2 <- datatestactivity1 %>% mutate(activity=replace(activity,activity==2,"WALKING_UPSTAIRS"))
datatestactivity3 <- datatestactivity2 %>% mutate(activity=replace(activity,activity==3,"WALKING_DOWNSTAIRS"))
datatestactivity4 <- datatestactivity3 %>% mutate(activity=replace(activity,activity==4,"SITTING"))
datatestactivity5 <- datatestactivity4 %>% mutate(activity=replace(activity,activity==5,"STANDING"))
datatestactivity6 <- datatestactivity5 %>% mutate(activity=replace(activity,activity==6,"LAYING"))
datatestmerged<-cbind(datatestsubject,datatestactivity6,datatest)

#READ DATA FROM UNZIPED FILES ABOUT TRAIN DATA, INCLUDING RENAMING ACTIVITY VALUES REQUIRED FOR STEP_3#

datatrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(datatrain) <- nombres
datatrainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(datatrainsubject)<-c("subject")
datatrainactivity <- read.table("./UCI HAR Dataset/train/y_train.txt")
names(datatrainactivity)<-c("activity")
datatrainactivity1 <- datatrainactivity %>% mutate(activity=replace(activity,activity==1,"WALKING"))
datatrainactivity2 <- datatrainactivity1 %>% mutate(activity=replace(activity,activity==2,"WALKING_UPSTAIRS"))
datatrainactivity3 <- datatrainactivity2 %>% mutate(activity=replace(activity,activity==3,"WALKING_DOWNSTAIRS"))
datatrainactivity4 <- datatrainactivity3 %>% mutate(activity=replace(activity,activity==4,"SITTING"))
datatrainactivity5 <- datatrainactivity4 %>% mutate(activity=replace(activity,activity==5,"STANDING"))
datatrainactivity6 <- datatrainactivity5 %>% mutate(activity=replace(activity,activity==6,"LAYING"))
datatrainmerged<-cbind(datatrainsubject,datatrainactivity6,datatrain)

#MERGES THE TRAINING AND TEST SETS TO CREATE ONE DATA SET (STEP_1)#

datastep1 <- rbind(datatestmerged, datatrainmerged)

#EXTRACTS ONLY THE MEASUREMENTS ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASURMENT (STEP_2)#
#AT THIS POINT STEP_3 WAS ALREADY PERFORMED#

datastep2 <- datastep1 %>% select(subject, activity, matches("std"),matches("mean"))

#APPROPIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIALE NAMES (STEP_4)#

names(datastep2)<- gsub("Acc", "Accelerometer", names(datastep2))
names(datastep2)<- gsub("Gyro", "Gyroscope", names(datastep2))
names(datastep2)<- gsub("tBody", "TimeBody", names(datastep2))
names(datastep2)<- gsub("tGrav", "TimeGrav", names(datastep2))
names(datastep2)<- gsub("fBody", "FrecuencyBody", names(datastep2))
names(datastep2)<- gsub("std..", "StandardDeviation", names(datastep2))
datastep4 <- datastep2

#FROM THE DATA SET IN STEP 4, CREATES A SECOND, INDEPENDENT TYDY DATA SET#
#WITH THE AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT (STEP_5)#

datastep5_pre <- datastep4
datastep5<-datastep5_pre %>% group_by(activity,subject) %>% summarise_each(funs(mean))
write.table(datastep5,file = "./filestep5.txt",row.name=FALSE)