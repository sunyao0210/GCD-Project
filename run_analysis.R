
setwd('F:/Mooc/Getting & Cleaning data/UCI HAR Dataset')
features<-read.table('features.txt')
Features<-as.character(features[,2])
Features[562]<-'subject'
index<-read.csv('index.csv')[,1]

setwd('test')
Xtest<-read.table('X_test.txt')
ytest<-read.table('y_test.txt')
DataSetA<-data.frame(Xtest,ytest)

setwd('../train')
Xtrain<-read.table('X_train.txt')
ytrain<-read.table('y_train.txt')
DataSetB<-data.frame(Xtrain,ytrain)

DataSet<-rbind(DataSetA,DataSetB)
names(DataSet)<-Features
index<-c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241)
DataSet<-DataSet[,index]

setwd('../')
write.csv(DataSet,'DataSet.txt')
