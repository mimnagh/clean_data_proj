#Merges the training and the test sets to create one data set.
activitylabels<-read.table(file="UCI HAR Dataset/activity_labels.txt")
features<-read.table(file="UCI HAR Dataset/features.txt")
testsubjects <-read.table(file="UCI HAR Dataset/test/subject_test.txt")
trainsubjects <-read.table(file="UCI HAR Dataset/train/subject_train.txt")
testdata <- read.table(file="UCI HAR Dataset/test/X_test.txt")
traindata <- read.table(file="UCI HAR Dataset/train/X_train.txt")
testlabels <- read.table(file="UCI HAR Dataset/test/y_test.txt")
trainlabels <- read.table(file="UCI HAR Dataset/train/y_train.txt")

subjects<- rbind(testsubjects,trainsubjects)
data<- rbind(testdata,traindata)
labels <- rbind(testlabels,trainlabels)

#Extracts only the measurements on the mean and standard deviation for each measurement. 
meanfeatures <- features[grep("-mean\\(\\)",features$V2),]
stdfeatures <- features[grep("-std\\(\\)",features$V2),]

#Uses descriptive activity names to name the activities in the data set
meandata<-data[,meanfeatures$V1]
colnames(meandata)<-meanfeatures$V2

stddata<-data[,stdfeatures$V1]
colnames(stddata)<-stdfeatures$V2


colnames(subjects)<-"subjects"

summarydata <- cbind(labels,subjects,meandata,stddata)

#Appropriately labels the data set with descriptive variable names. 
descriptivenames <- merge(summarydata,activitylabels,by="V1")
library(plyr)
descriptivenames <- rename(descriptivenames,c("V1"="activityid","V2"="activityname"))

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

result <- dcast(melted,subjects+activityname~variable,mean)
newnames<-gsub("(^[f])","frequency.",colnames(result))
newnames<-gsub("(^[t])","time.",newnames)
newnames<-gsub("[\\-]+",".",newnames)
newnames<-gsub("\\(\\)","",newnames)
newnames<-tolower(newnames)

colnames(result) <- newnames






