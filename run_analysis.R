
working.directory <- "" 
if (nchar(working.directory) == 0){
  stop("Please setup the working.directory variable to select the working directory")
}
library("reshape")
dir.create("c:/data")
working.directory <- "c:/data"
setwd(working.directory)
if (!require("stringr")){
  install.packages("stringr", dependencies=TRUE)
}
library("stringr")
if (!require("data.table")){
  install.packages("data.table", dependencies=TRUE)
}
library("data.table")
if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")){
  download.file(url='http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' ,destfile="getdata-projectfiles-UCI HAR Dataset.zip")
}
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
if(!file.exists("UCI HAR Dataset")){
  stop("The dataset was not downloaded")
}
setwd("UCI HAR Dataset")

#Working to define  Activitity description 

X_test 	<- read.table("test/X_test.txt",header=FALSE)
y_test 	<- read.table("test/y_test.txt",header=FALSE,col.names=c("activity"))
subject_test <- read.table("test/subject_test.txt",header=FALSE, col.names=c("Subject"))
X_train 	<- read.table("train/X_train.txt",header=FALSE)
y_train 	<- read.table("train/y_train.txt",header=FALSE,col.names=c("activity"))
subject_train <- read.table("train/subject_train.txt",header=FALSE, col.names=c("Subject"))

activity_labels <- read.table("activity_labels.txt",header=FALSE,colClasses="character",col.names=c("activity", "activityName"))
y_test$activity <- factor(y_test$activity,levels=activity_labels$activity,labels=activity_labels$activityName)
y_train$activity <- factor(y_train$activity,levels=activity_labels$activity,labels=activity_labels$activityName)


# Working with features.txt file
features <- read.table("features.txt", header=FALSE)
colnames(X_test) <- features$V2
colnames(X_train) <- features$V2


X_test<-cbind(X_test,y_test)
X_test<-cbind(X_test,subject_test)
X_train<-cbind(X_train,y_train)
X_train<-cbind(X_train,subject_train)
X<-rbind(X_test,X_train)

# Only the measurements on the mean and standard deviation for each measurement

x_mean<-sapply(X,mean,na.rm=TRUE)
x_sd<-sapply(X,sd,na.rm=TRUE)

dt <- data.table(X)
tidydata<- dt[,lapply(.SD,mean),by="activity,Subject"]
write.table(tidydata,file="tidydata.txt",row.names = FALSE)

